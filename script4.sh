#!/usr/bin/bash

array_users=(`ls /home/v/homework/CRED`)
i=0

#Check whether entered username

if [ $# -eq 0 ];then
  echo "You do not enter username after scriptname, please enter it"
  exit 2
fi

#Check entred value

for j in "${array_users[@]}" ; do
  if [ "$j" = $1 ]; then
    path_user=/home/v/homework/CRED/$j
    i=1
    break
  else
    continue
  fi
done
if [ $i -eq 1 ]; then
  . $path_user
else
  echo " You entered unknown user, please check.."
  exit 2
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
