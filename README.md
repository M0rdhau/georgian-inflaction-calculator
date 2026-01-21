# Georgian inflation calculator


One day I wanted to tell my grandma how much her restoration of a table that cost 200 Gela in 2005 would cost in today's money and I found no good alternative to the [us inflation calculator](https://www.usinflationcalculator.com/) so I decided to make my own.

Usage example:
```
$ ./inflation_counter.sh 2005 2024 1000
The price in Georgia from 2005 to 2024 has changed from 1000 to: 2732.70
```

Or visit this repo's github pages page: https://m0rdhau.github.io/georgian-inflaction-calculator/

Data taken from https://data.worldbank.org/indicator/FP.CPI.TOTL.ZG?end=2024&locations=GE&start=1995
Will work for any countries from the dataset with a little adjustment
