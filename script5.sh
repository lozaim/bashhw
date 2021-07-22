#!/usr/bin/bash

array_users=(`ls /home/v/homework/CRED`)
i=0

select_user() {
  select USER_NAME in $(ls /home/v/homework/CRED); do
    source "/home/v/homework/CRED/${USER_NAME}"
    break
  done
}

#Check whether entered username
if [ $# -eq 0 ]; then
  echo "You do not enter username after scriptname, please enter number"
  select_user
  copy_fun
elif  [ -f /home/v/homework/CRED/$1 ] && source "./home/v/homework/CRED/$1"; then
  copy_fun
else
  echo "You entered unknown user, please enter number"
  select_user
fi

copy_fun () {
  if [ ! -d $2 ]; then
    mkdir $2
  fi
    cp -a -T $1 $2
}

copy_fun $var_src $var_dst

if [ $? -eq 0 ] ; then
echo "Successful copy files from \"$var_src\" to \"$var_dst\" "
fi
