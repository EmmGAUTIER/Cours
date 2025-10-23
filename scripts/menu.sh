#!/bin/bash

DIALOG=dialog

REPERTOIRE_SCRIPTS=$(dirname "$(realpath "$0")")
export REPERTOIRE_COURS=`dirname $REPERTOIRE_SCRIPTS`
cd  $REPERTOIRE_COURS
export REPERTOIRE_DATA=$REPERTOIRE_COURS/data

main_menu() {
    while true; do
        CHOICE=$($DIALOG --clear --backtitle "Menu Principal" \
            --title "Menu" \
            --menu "Sélectionnez une option :" 15 50 5 \
            1 "Téléchargement des données" \
            t "Compilation des textes" \
            z "Fin" \
            2>&1 >/dev/tty)

        case $CHOICE in
            1)  echo "Téléchargement des données :"
                ${REPERTOIRE_SCRIPTS}/telecharge.sh
                read -p "Appuyez sur <Return> pour continuer" rep
                ;;


            t) echo "Compilation des textes :"
                ${REPERTOIRE_COURS}/scripts/comptextes.sh
                read -p "Appuyez sur <Return> pour continuer" rep
                ;;

            z) clear
               exit 0
                ;;

            *) break ;;
        esac
    done
}

main_menu
clear

