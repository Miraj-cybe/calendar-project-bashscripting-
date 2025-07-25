#!/bin/bash

# Simple Calendar Generator (30-day months)

read -p "Enter year: " year

# Month names array - all quotes closed correctly
months=("January" "February" "March" "April" "May" "June" \
        "July" "August" "September" "October" "November" "December")

for month in "${months[@]}"
do
    echo "-----------------------------"
    echo "         $month $year       "
    echo "-----------------------------"
    echo "Sun Mon Tue Wed Thu Fri Sat"

    dayOfWeek=0

    for (( day=1; day<=30; day++ ))
    do
        # Print day with formatting
        if [ $day -lt 10 ]; then
           printf  " $day "
        else
           printf  " $day "
        fi

        # Newline after Saturday
        dayOfWeek=$(( (dayOfWeek + 1) % 7 ))
        if [ $dayOfWeek -eq 0 ]; then
            echo ""
        fi
    done

    echo -e "\n"
done


