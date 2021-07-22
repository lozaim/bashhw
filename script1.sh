#!/usr/bin/bash

case $1 in
  user1)
    var_src=/home/v/homework/SRC/user1
    var_dst=/home/v/homework/DST/user1
  ;;
  user2)
    var_src=/home/v/homework/SRC/user2
    var_dst=/home/v/homework/DST/user2
  ;;
  user3)
    var_src=/home/v/homework/SRC/user3
    var_dst=/home/v/homework/DST/user3
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
