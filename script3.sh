#!/usr/bin/bash

case $1 in
  user1)
  . /home/v/homework/CRED/user1
  ;;
  user2)
  . /home/v/homework/CRED/user2
  ;;
  user3)
  . /home/v/homework/CRED/user3
  ;;
  *)
  echo " You entered unknown user, please check.."
  exit 2
  ;;
esac

copy_fun () {
  if [ ! -d $2 ]; then
    mkdir $2
  fi
    cp -a -T $1 $2
    echo "Successful copy files from \"$1\" to \"$2\" "
}

#copy_fun () {
#  cp -a -T $1 $2
#  echo "Successful copy files from \"$1\" to \"$2\" "
#}

copy_fun $var_src $var_dst
