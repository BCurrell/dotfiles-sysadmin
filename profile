###
#  .profile, sourced by login shells
#
#  For flexibility, do not add any config directly to this file. Instead,
#  add individual config files with a .conf suffix to the directory defined
#  by ${PROFILE_D} below.
###

# The directory to source config files from
PROFILE_D="${HOME}/.profile.d"

# Check that the directory exists
if [ -d "${PROFILE_D}" ]
then
	# Loop over any files or folders in the directory with a .conf suffix
	for F in "${PROFILE_D}"/*.conf
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
unset PROFILE_D
