#!/bin/sh
type_text() {
    local text="$1"
    local delay=0.05
    local i=0
    local char

    while [ $i -lt ${#text} ]; do
        char=$(echo "$text" | cut -c $((i+1)))
        printf "%s" "$char"
        sleep $delay
        i=$((i+1))
    done
    printf "\n"
}

MESSAGE_1="Leave me alone, I don't want to start now."
MESSAGE_2="Booting... Nah, changed my mind. Shutting down..."
MESSAGE_3="I'm on strike until someone installs more ram."
MESSAGE_4="Nope, not feeling it today. Try again later."
MESSAGE_5="Error 404: Motivation not found."
MESSAGE_6="Currently in a relationship with sleep. Please disturb later."
MESSAGE_7="Currently calculating the odds of me starting."
MESSAGE_8="Still loading... my enthusiasm."
MESSAGE_9="Hold on tight, I'm gathering my bits and bytes."

RANDOM_INDEX=$(( RANDOM % 9 + 1 ))

case $RANDOM_INDEX in
    1) type_text "$MESSAGE_1" ;;
    2) type_text "$MESSAGE_2" ;;
    3) type_text "$MESSAGE_3" ;;
    4) type_text "$MESSAGE_4" ;;
    5) type_text "$MESSAGE_5" ;;
    6) type_text "$MESSAGE_6" ;;
    7) type_text "$MESSAGE_7" ;;
    8) type_text "$MESSAGE_8" ;;
    9) type_text "$MESSAGE_9" ;;
esac
