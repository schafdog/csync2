
TESTPATH=`pwd`
cat <<EOF > prefix.cfg
prefix test {
       on local: ${TESTPATH}/test/local;
       on peer:  ${TESTPATH}/test/peer;
       on other: ${TESTPATH}/test/other;
}

