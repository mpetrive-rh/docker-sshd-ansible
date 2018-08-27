#!/bin/bash
__create_user() {
  # Create a user to SSH into as.
  useradd user
  SSH_USERPASS=newpass
  echo -e "$SSH_USERPASS\n$SSH_USERPASS" | (passwd --stdin user)
  echo ssh user password: $SSH_USERPASS
}

__add_user_to_sudoers() {
  echo "user ALL=(ALL:ALL) NOPASSWD: ALL" | (EDITOR="tee -a" visudo)
}

# Call all functions
__create_user
__add_user_to_sudoers
