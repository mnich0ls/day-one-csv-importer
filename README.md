# day-one-csv-importer
Imports existing journal entries to DayOne

A simple ruby script that utilizes [jrnl](http://maebert.github.io/jrnl/) for adding entries from a CSV file to your DayOne journal.

# Requirements:
Install [jrnl](http://maebert.github.io/jrnl/). Be sure to read their documentation and complete [this step] (http://maebert.github.io/jrnl/advanced.html#dayone-integration) so that you can write entries to DayOne.

Your CSV of entries should not have any headers, but must have columns ordered in the following format:

`date,title,body`

example:

`2/10/2016 8:20am,My First Entry,This is my first entry...`

# Usage:

With the script and the CSV file in the same directory, run:

`$ ruby dayone_importer.rb your_csv_filename.csv`

The script will print out the entries as it imports them to jrnl.