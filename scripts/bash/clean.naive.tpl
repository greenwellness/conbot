#!/usr/bin/env bash

set -u
set -e

result() {
	printf "%s\n" "[${1}]"
}

delete() {
	printf "%s %s van %s ... " "$(echo -e "\033[31;1m » \033[39;49m")" "Verwijderen"	"${1}"
}

##
# Main routine
#
main() {

	[[ -d var/cache ]] &&\
		{
			delete cache
			rm -rf var/cache/* &&\
				result ok || result MISLUKT
		}

	[[ -d var/session ]] &&\
		{
			delete sessie
			rm -rf var/session/* &&\
				result ok || result MISLUKT
		}

}


##
# Initialize
#
init() {
	printf "\n%s\n\n" "Acties uitvoeren:"
	main
}


# GO!
init

exit 1
