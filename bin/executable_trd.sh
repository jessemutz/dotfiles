#!/bin/zsh

# Set colors for prompt
BLK='\e[0;30m'     # Black Text
RED='\033[0;31m'   # Red color
YEL='\033[0;33m'   # Yellow color
GRN='\033[0;32m'   # Green color
GRY='\033[0;37m'   # Green color
RDBG='\e[1;30;41m'  # Red BG
GRBG='\e[1;30;42m'  # Green BG
YELBG='\e[1;30;43m' # Yellow BG
NC='\033[0m'       # No Color

# Function to center text
center() {
    termwidth=$(tput cols)
    padding=$(printf '%0.1s' " "{1..500})
    printf '%*.*s %s %*.*s\n' 0 $(((${termwidth}+${#1})/2)) "$padding" "$1" 0 $(((${termwidth}-${#1})/2)) "$padding"
}

# Function to interactively select Pantheon server and run drush command
trd() {
  # Check if --help option is provided
  if [[ "$1" == "--help" || "$1" == "-h" ]]; then
    usage
    return
  fi

	# Check if SITE variable is set
	if [ -v SITE ]; then
		echo "${GRBG} $SITE ${NC}: select Pantheon server:"
		select env in dev test git-branch live Quit; do
			case $env in
			'dev' | 'test')
				echo "Running ${GRN}'drush $@'${NC} on ${YEL}$SITE${NC}.${YELBG}$env${NC}"
				terminus remote:drush "$SITE.$env" -- "$@"
				break
				;;
			'Quit')
				echo 'k, forget it.'
				break
				;;
			'git-branch')
				current_branch=$(git branch --show-current)
				terminus remote:drush "$SITE.$current_branch" -- "$@"
				break
				;;
			'live')
        echo " You are about to run the following command:"
        echo " ${GRBG}  drush $@  ${NC}"
        echo " "
        echo " on the following environment:"
        echo " ${RDBG}  $SITE.live  ${NC}"
        echo " "
        echo " Are you sure you want to do this? [y/N] \c"
				read response
				case $response in
					[yY][eE][sS]|[yY])
            echo " "
						echo "Running ${GRN}'drush $@'${NC} on ${RED}$SITE${NC}.${RDBG}live${NC}"
						terminus remote:drush "$SITE.live" -- "$@"
						;;
					*)
						echo "Phew, that was close..."
						;;
				esac
				break
				;;
			*)
				echo 'Pick a valid option.'
				break
				;;
			esac
		done
	else
		echo "\$SITE not set. Use: 'export SITE=site-name-here'"
	fi
}

# Usage message
usage() {
	echo "Usage: trd [drush-command]"
	echo "Run any drush command on a given Pantheon environment."
	echo "Options:"
	echo "  1. ${GRN}dev${NC}: Run drush command on dev environment"
	echo "  2. ${YEL}test${NC}: Run drush command on test environment"
	echo "  3. ${YEL}git-branch${NC}: Run drush command on the current git branch."
	echo "  4. ${RED}live${NC}: Run drush command on live environment"
	echo "     - This option is ideal for multidev."
	echo "  5. ${GRN}Quit${NC}: Quit without running any command"
}

# Example usage
# export SITE="example-site"
# trd "$@"
