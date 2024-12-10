#!/bin/zsh

# Set colors for prompt
BLK='\e[0;30m'     # Black Text
RED='\033[0;31m'    # Red color
YEL='\033[0;33m'    # Yellow color
GRN='\033[0;32m'    # Green color
GRY='\033[0;37m'    # Green color
RDBG='\e[1;30;41m'  # Red BG
GRBG='\e[1;30;42m'  # Green BG
YELBG='\e[1;30;43m' # Yellow BG
NC='\033[0m'        # No Color

# Function to center text
center() {
  termwidth=$(tput cols)
  padding=$(printf '%0.1s' " "{1..500})
  printf '%*.*s %s %*.*s\n' 0 $(((${termwidth}+${#1})/2)) "$padding" "$1" 0 $(((${termwidth}-${#1})/2)) "$padding"
}

# Function to interactively select Pantheon server and run drush command
tile() {
  # Check if --help option is provided
  if [[ "$1" == "--help" || "$1" == "-h" ]]; then
    usage
    return
  fi

  # Set current space
  current_space=$(yabai -m query --spaces --space | jq '.index')

  # Get the number of spaces
  total_spaces=$(yabai -m query --spaces | jq 'length')
 
  # Ensure the user input is between 1 and total_spaces
  while true; do
    echo "You are currently on space ${GRBG} ${current_space} ${NC}"
    echo "Enter a space number (1-$total_spaces): "
    read input

    # Check if the input is a valid number and within the range
    if [[ "$input" =~ ^[0-9]+$ ]] && [ "$input" -ge 1 ] && [ "$input" -le "$total_spaces" ]; then
      echo "You selected space number: ${GRBG} $input ${NC}"
      break  # Exit the loop if the input is valid
    else
      echo "Invalid input. Please enter a number between 1 and $total_spaces."
    fi
  done

  # Now allow the user to choose tile/untile/quit
  echo "Choose the action for space $input:"
  select action in "Tile" "Float" "Quit"; do
    case $action in
      "Tile")
        echo "Setting space ${GRNBG} $input ${NC} to ${GRN}tile (bsp)${NC}"
        yabai -m config --space $input layout bsp
        break
        ;;
      "Float")
        echo "Setting space ${GRN} $input ${NC} to ${RED}unmanaged (float)${NC}"
        yabai -m config --space $input layout float
        break
        ;;
      "Quit")
        echo "Exiting without making changes."
        break
        ;;
      *)
        echo "Invalid choice, please select a valid option."
        ;;
    esac
  done
}

# Usage message
usage() {
  echo "Usage: tile [space]"
  echo "Set any selected window to tiled or untiled with yabai"
  echo "Options:"
  echo "  1. ${GRN}tile${NC}: allows yabai to manage selected space with bsp"
  echo "  2. ${GRN}untile${NC}: removes yabai window management"
  echo "  3. ${GRN}Quit${NC}: Quit without running any command"
}

