###
#  .bashrc, sourced by Bash interactive shells
#
#  For flexibility, do not add any config directly to this file. Instead,
#  add individual config files with a .conf suffix to the directory defined
#  by ${BASHRC_D} below.
###

# Check if the shell is interactive
case "$-" in
	*i*)
		# Shell is interactive, continue
		;;
	*)
		# Shell is non-interactive, exit without doing anything
		return
		;;
esac

# The directory to source config files from
BASHRC_D="${HOME}/.bashrc.d"

# Check that the directory exists
if [ -d "${BASHRC_D}" ]
then
	# Loop over any files or folders in the directory with a .conf suffix
	for F in "${BASHRC_D}"/*.conf
	do
		# Check that the path is a file and is readable
		if [ -f "${F}" ] && [ -r "${F}" ]
		then
			# Source the config file
			# shellcheck source=/dev/null
			. "${F}"
		fi
	done

	# Unset the path variable when finished
	unset F
fi

# Unset the directory variable when finished
unset BASHRC_D
