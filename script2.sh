#!/usr/bin/bash

if [ "$1" = "user1" ]; then
    var_src=/home/v/homework/SRC/user1
    var_dst=/home/v/homework/DST/user1
elif [ "$1" = "user2" ]; then
    var_src=/home/v/homework/SRC/user2
    var_dst=/home/v/homework/DST/user2
elif [ "$1" = "user3" ]; then
    var_src=/home/v/homework/SRC/user3
    var_dst=/home/v/homework/DST/user3
else
  echo " You entered unknown user, please check.."
  exit 2
fi

copy_fun () {
  if [ ! -d $2 ]; then
    mkdir $2
  fi
    cp -a -T $1 $2
    echo "Successful copy files from \"$1\" to \"$2\" "
}

copy_fun $var_src $var_dst
