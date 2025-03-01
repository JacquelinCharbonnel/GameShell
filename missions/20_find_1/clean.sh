#!/bin/bash


# mise à jour du répertoire courant, qui pourrait être supprimé lors du ménage
case $PWD in
    *labyrinthe*)
        cd "$(find "$GASH_HOME/Chateau/Cave/" -type d -name '.Long*Couloir*')" &&
            echo "Vous voila de retour par téléporation à l'entrée du labyrinthe..."
        ;;
esac
find "$GASH_TMP" -iname piece_d_or -print0 | xargs -0 rm -f
find "$GASH_HOME/Chateau/Cave/" -name labyrinthe -type d -print0 | xargs -0 rm -rf
