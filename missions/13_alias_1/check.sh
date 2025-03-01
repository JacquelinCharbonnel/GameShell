#!/bin/bash

_local_check() {

    local cmd
    cmd=$(alias la 2> /dev/null | cut -f2 -d"=" | tr -d "' ")
    if [ -z "$cmd" ]
    then
        echo "L'alias 'la' n'existe pas..."
        return 1
    fi

    if ! la &> /dev/null
    then
        echo "L'alias 'la' est invalide..."
        return 1
    fi

    if [ "$cmd" != 'ls-A' ]
    then
        echo "L'alias ne lance pas la bonne commande (\"ls -A\")."
        unalias la
        return 1
    fi

    return 0
}

_local_check
