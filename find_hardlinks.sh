
find . -type f -not -links 1 -exec stat -c '%d:%i %h %n' {} \;  | sort -n 