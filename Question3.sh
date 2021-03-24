#First show the menu to the user
echo "Choose one option:"
echo "1.Add information to log.txt"
echo "2.Remove log.txt"
read x
option=$x
#because is a 2 options menu is better to use a case statement
case ${option} in
# With vim you can create txt files, However may be challenging for the 
# User to exit, for that reason is necessary to give instructions of how to exit
  1) echo "Now you can edit a file call log.txt"
     echo "to exit and save; press esc, then insert :wq and press enter"
     echo " press y if you understood the instructions"
     read y
      confirmation=$y
# To confirm the user understood the instruction I created another case statement
# because is the most optimum way, also can be approachable with an if statement 
      case ${confirmation} in
	y)vim log.txt
	 ;;
	*) exit
	 ;;
	 esac
      ;;
  2) echo "log.txt is removed"
     rm log.txt
    ;;
  *)
     echo "Wrong Input"
esac
