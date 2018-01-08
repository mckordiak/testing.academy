#!/bin/bash
 
    echo "Changing shell for $USER" 
    read -p "New shell: " SHELLPATH
if [[ $# -ne 0 ]]; then
    exit 
fi
    if [[ -z $SHELLPATH ]]; then
    exit 0
    fi
    if [[ ! $SHELLPATH =~ ^/.+ ]]; then
        echo "chsh.sh: shell must be a full path name" 1>&2
        exit 1
    fi
    if [[ ! -e $SHELLPATH ]]; then
        echo "chsh.sh: \"$SHELLPATH\" does not exist" 1>&2
        exit 1
    fi
    if [[ ! -x $SHELLPATH ]]; then
        echo "chsh.sh: \"$SHELLPATH\" is not executable"
        exit 1
    fi
   > /dev/null 2>&1
    if [[ ! $(egrep -q "^${SHELLPATH}$" /etc/shells ]]
    echo "\"$SHELLPATH\" is not listed in /etc/shells"
    fi

   
