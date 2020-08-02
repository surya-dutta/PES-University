#!/bin/bash
echo "Phone Book"
echo "Please select one of the following options:"
echo "1.Add new contact"
echo "2.Search contact"
echo "3.Delete contact"
echo "4.Quit"
echo "5.View phone book"
while true
do
read usrop
echo "You have selected $usrop"
case "$usrop" in
1)
while true
do
echo "Add new contact"
echo "Enter name"
read name
echo "Enter phone number"
read number
echo "$name:$number">>phone.lst
echo "name->$name number->$number added successfully"
echo -e "do you want to add another contact? [y/n] \c"
read ans
if [ "$ans" == "n" ]
then
break
fi
done;;
2)
  while true
  do
  echo "Search Contact"
  echo "Enter the name or contact to search"
  read searchop
  echo "Search results :"
  grep -iw $searchop phone.lst
  echo "do you want to search for another contact? [y/n]"
  read ans1
  if [ "$ans1" = "n" ]
  then
  break
  fi
  done;;
3)
  while true
  do
  echo "Enter the name/contact to be deleted"
  read delop
  # sed  -i '/$delop/d' phone.lst
  echo '' > temp.lst
  grep -vw "$delop" phone.lst > temp.lst
  mv temp.lst phone.lst
  rm temp.lst
  echo "Contact deleted successfully"
  echo "do you want to delete another contact? [y/n]"
  read ans2
  if [ "$ans2" = "n" ]
  then
  break
  fi
  done;;
4)echo "terminating..."
  exit;;
5)echo "Phone Book"
  cat phone.lst;;
*)
  echo "invalid option"
esac;
echo "Give more? [y/n]"
read ans4
if [ "$ans4" = "n" ]
then
exit
fi
done
