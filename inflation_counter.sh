#!/bin/bash

key="$(grep 'Country' inflation.csv)"
georgia="$(grep 'Georgia' inflation.csv)"
initial_year=1963 # used for calculating index offsets, not actually a year

if [ "$#" -ne 3 ] || [ "$1" == "usage" ]; then
  echo "Usage: $0 starting_year ending_year starting_price"
  exit 1
fi

# no input validation ftw
starting_year=$1
ending_year=$2
starting_price=$3

starting_index=$(($starting_year - $initial_year))
ending_index=$(($ending_year - $initial_year))
for i in $(seq $starting_index $ending_index); do
  percent=$(echo $georgia | cut -d "," -f"$i" | sed 's/\"//g')
  starting_price_calc="$starting_price + ($starting_price "'*'" $percent / 100)"
  echo "$starting_price_calc"
  starting_price=$(bc <<< "$starting_price_calc")
  echo "$starting_price"
done
