#Managing user accounts is a common administrative task. This script adds or removes users:
#!/bin/bash
manage_user() {
username=$1
action=$2
if [ "$action" == "add" ]; then
 # Add a user with a home directory
sudo useradd -m $username
echo "User $username added."
elif [ "$action" == "remove" ]; then
 # Remove a user and their home directory
sudo userdel -r $username
echo "User $username removed."
else
echo "Invalid action. Use 'add' or 'remove'."
fi
}
# Validate input arguments
if [ -z "$1" ] || [ -z "$2" ]; then
  echo "Usage: $0 <username> <add|remove>"
else
#Call the manage_user function
    manage_user $1 $2
fi

