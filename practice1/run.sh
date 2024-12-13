vault kv get $SECRET_NAME |  sed -n '/= Data =/,$ p' | grep -Ev '= Data =|^Key|^--' | awk '{ print "export " $1"="$2}'
