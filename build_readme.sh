#!/bin/bash

# append_section "header" "readme" => echo "" >> readme.md && cat readme.content/header.md >> readme.md
append_section(){
	echo "" >> $2.md && cat $2.content/$1.md >> $2.md
}

clear_file() {
	cat /dev/null > $1.md
}

build_resource() {
	rm -rf resources
	mkdir -p resources/babioles
	cp readme.content/resources/*.png ./resources
	cp readme.content/resources/babioles/*.png ./resources/babioles
}

build_resource

clear_file "readme"
append_section "header" "readme"
append_section "toc" "readme"
append_section "doodle" "readme"
append_section "organisation" "readme"
append_section "prizing" "readme"
append_section "reglement" "readme"
append_section "points" "readme"