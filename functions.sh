ask_for_confirmation() {
  print_question "$1 (y/n) "
  read -n 1
  printf "\n"
}

ask_for_sudo() {
  # Ask for the administrator password upfront
  sudo -v

  # Update existing `sudo` time stamp until this script has finished
  # https://gist.github.com/cowboy/3118588
  while true; do
    sudo -n true
    sleep 60
    kill -0 "$$" || exit
  done 2> /dev/null &
}

print_info() {
  # Print output in blue
  printf "\n\e[0;34m 👊  $1\e[0m\n"
}

print_question() {
  # Print output in yellow
  printf "\e[0;33m 🤔  $1\e[0m\n"
}

print_success() {
  printf "\e[0;32m 👍  $1\e[0m\n"
}
