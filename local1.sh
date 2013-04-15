echo "delete from dirty ; delete from file" | mysql -u csync2_local -pcsync2_local csync2_local
./csync2 -p 30860 -K csync2_local.cfg -N local -cr$DEBUG test/local
echo "select * from file;" | mysql -u csync2_local -pcsync2_local csync2_local > file.res
./csync2 -p 30860 -K csync2_local.cfg -N local -ur$DEBUG test/local
echo "select count(*) from dirty;" | mysql -N -u csync2_local -pcsync2_local csync2_local > empty.res

