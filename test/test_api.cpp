#include "../src/db_sql.hpp"
#include "../src/database_v2.hpp"
#include "../src/db_sqlite.hpp"
#include "../src/db_mysql.hpp"
#include "../src/db_postgres.hpp"
#include <gtest/gtest.h>
#include "../src/db.hpp"

static const char *csync_decode_v2(const char *value)
{
	return value;
}

class DatabaseTest : public ::testing::TestWithParam<const char*> {
protected:
    DbApi* db;

    void SetUp() override {
        db_open(GetParam(), 0, &db);
        ASSERT_TRUE(db != nullptr);
        DatabaseConnection* conn = db->getConnection();
        ASSERT_TRUE(conn != nullptr);
        conn->query("CREATE TABLE IF NOT EXISTS test_table (name TEXT, value INTEGER);");
    }

    void TearDown() override {
        DatabaseConnection* conn = db->getConnection();
        ASSERT_TRUE(conn != nullptr);
        conn->query("DROP TABLE IF EXISTS test_table;");
        delete db;
    }
};

TEST_P(DatabaseTest, SimpleTest) {
    ASSERT_TRUE(true);
}

TEST_P(DatabaseTest, AddDirty) {
    ASSERT_EQ(db->add_dirty("testfile", 0, "myhost", "peerhost", "op", "checktxt", "dev", "ino", "other", 1, 0, 0), 1);
}

TEST_P(DatabaseTest, AddDirtyNull) {
    ASSERT_EQ(db->add_dirty("testfile", 0, "myhost", "peerhost", "op", nullptr, nullptr, nullptr, nullptr, 1, 0, 0), 1);
}

TEST_P(DatabaseTest, Force) {
    db->force("testfile", 0);
}

TEST_P(DatabaseTest, ForceRecursive) {
    db->force("testfile", 1);
}

TEST_P(DatabaseTest, RemoveHint) {
    db->remove_hint("testfile", 0);
}

TEST_P(DatabaseTest, RemoveHintRecursive) {
    db->remove_hint("testfile", 1);
}

TEST_P(DatabaseTest, RemoveFile) {
    ASSERT_EQ(db->remove_file("testfile", 0), 1);
}

TEST_P(DatabaseTest, RemoveFileRecursive) {
    ASSERT_EQ(db->remove_file("testfile", 1), 1);
}

TEST_P(DatabaseTest, DeleteFile) {
    ASSERT_EQ(db->delete_file("testfile", 0), 1);
}

TEST_P(DatabaseTest, DeleteFileRecursive) {
    ASSERT_EQ(db->delete_file("testfile", 1), 1);
}

TEST_P(DatabaseTest, RemoveDirty) {
    ASSERT_EQ(db->remove_dirty("peerhost", "testfile", 0), 1);
}

TEST_P(DatabaseTest, RemoveDirtyRecursive) {
    ASSERT_EQ(db->remove_dirty("peerhost", "testfile", 1), 1);
}

TEST_P(DatabaseTest, ClearOperation) {
    db->clear_operation("myhost", "peerhost", "testfile");
}

TEST_P(DatabaseTest, UpdateFile) {
    struct stat st;
    st.st_mode = 0;
    st.st_mtime = 0;
    st.st_size = 0;
    st.st_dev = 0;
    st.st_ino = 0;
    ASSERT_EQ(db->update_file("testfile", "checktxt", &st, "digest"), 1);
}

TEST_P(DatabaseTest, InsertFile) {
    struct stat st;
    st.st_mode = 0;
    st.st_mtime = 0;
    st.st_size = 0;
    st.st_dev = 0;
    st.st_ino = 0;
    ASSERT_EQ(db->insert_file("testfile", "checktxt", &st, "digest"), 1);
}

TEST_P(DatabaseTest, InsertUpdateFile) {
    struct stat st;
    st.st_mode = 666;
    st.st_mtime = 123456789;
    st.st_size = 0;
    st.st_dev = 123;
    st.st_ino = 456;
    ASSERT_EQ(db->insert_update_file("testfile", "checktxt", &st, "digest"), 1);
}

TEST_P(DatabaseTest, InsertRemoveFileVerification) {
    struct stat st;
    st.st_mode = 0;
    st.st_mtime = 0;
    st.st_size = 0;
    st.st_dev = 0;
    st.st_ino = 0;
    const char* filename = "verify_file";

    // 1. Insert the file
    ASSERT_EQ(db->insert_file(filename, "checktxt", &st, "digest"), 1);

    // 2. Verify file presence
    textlist_p files = db->find_file(filename, nullptr);
    bool found = false;
    if (files) {
        struct textlist* current = files;
        while (current) {
            if (current->value && strcmp(current->value, filename) == 0) {
                found = true;
                break;
            }
            current = current->next;
        }
        textlist_free(files);
    }
    ASSERT_TRUE(found) << "File " << filename << " not found after insertion.";

    // 3. Remove the file
    ASSERT_EQ(db->remove_file(filename, 0), 1);

    // 4. Verify file absence
    files = db->find_file(filename, nullptr);
    found = false;
    if (files) {
        struct textlist* current = files;
        while (current) {
            if (current->value && strcmp(current->value, filename) == 0) {
                found = true;
                break;
            }
            current = current->next;
        }
        textlist_free(files);
    }
    ASSERT_FALSE(found) << "File " << filename << " found after removal.";
}

TEST_P(DatabaseTest, UpdateDevNo) {
    ASSERT_EQ(db->update_dev_no("testfile", 0, 1, 2), 1);
}

TEST_P(DatabaseTest, UpdateDevNoRecursive) {
    ASSERT_EQ(db->update_dev_no("testfile", 1, 1, 2), 1);
}

TEST_P(DatabaseTest, DelAction) {
    ASSERT_EQ(db->del_action("testfile", "prefix_cmd"), 1);
}

TEST_P(DatabaseTest, AddAction) {
    ASSERT_EQ(db->add_action("testfile", "prefix_cmd", "logfile"), 1);
}

TEST_P(DatabaseTest, RemoveActionEntry) {
    ASSERT_EQ(db->remove_action_entry("testfile", "command", "logfile"), 1);
}

TEST_P(DatabaseTest, MoveFile) {
    ASSERT_EQ(db->move_file("oldfile", "newfile"), 1);
}

TEST_P(DatabaseTest, UpdateDirtyHardlinks) {
    struct stat st;
    st.st_dev = 0;
    st.st_ino = 0;
    ASSERT_EQ(db->update_dirty_hardlinks("peerhost", "newfile", &st), 1);
}

TEST_P(DatabaseTest, ExecuteUpdateWithParameters) {
    DatabaseConnection* conn = db->getConnection();
    ASSERT_TRUE(conn != nullptr);

    // Test with named parameters
    long long affected_rows = conn->execute_update(
        "insert_test_data",
        "INSERT INTO test_table (name, value) VALUES (?, ?)",
        "test_name_1", 123
    );
    ASSERT_EQ(affected_rows, 1);

    // Test with unnamed parameters
    affected_rows = conn->execute_update(
        "INSERT INTO test_table (name, value) VALUES (?, ?)",
        "test_name_2", 456
    );
    ASSERT_EQ(affected_rows, 1);

    // Verify insertion (requires a SELECT and ResultSet, which is more complex for this test)
    // For now, we'll rely on the affected_rows count.
}

INSTANTIATE_TEST_SUITE_P(
    AllDatabases,
    DatabaseTest,
    ::testing::Values(
        //"sqlite::memory:",
        "mysql://testuser:testpw@localhost:3306/testdb",
        "pgsql://testuser:testpw@localhost:5432/testdb"
    )
);

int main(int argc, char **argv) {
    csync_out_debug = stderr;
    csync_level_debug = 2;
    db_decode = csync_decode_v2;
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
