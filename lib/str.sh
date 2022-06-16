# shellcheck shell=bash
# Module containing string related functions

# Returns true if, and only if, the number of characters in s is 0
#
# Please note that blank characters do add up to the total
#
# Arguments:
#  String s
# Returns
#  0 if string s is empty, non-zero otherwise
str::is_empty() {
	[[ -z "$1" ]]
}

# vim: set noexpandtab tabstop=2 iskeyword+=\: :
