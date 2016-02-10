# day-one-csv-importer
Imports existing journal entries to DayOne

A simple ruby script that utilizes [jrnl][jrnl] for adding entries from a CSV file to your [DayOne][dayone] journal.

# Requirements:
[Install jrnl][jrnl_install]. Be sure to read their documentation and complete [this step] [jrnl_dayone_config] so that you can write entries to [DayOne][dayone].

Your CSV of entries should not have any headers, but must have columns ordered in the following format:

`date,title,body`

example:

`2/10/2016 8:20am,My First Entry,This is my first entry...`

# Usage:

With the script and the CSV file in the same directory, run:

`$ ruby dayone_importer.rb your_csv_filename.csv`

The script will print out the entries as it imports them to [jrnl][jrnl].

[dayone]: http://dayoneapp.com
[jrnl]: http://maebert.github.io/jrnl/
[jrnl_install]: http://maebert.github.io/jrnl/installation.html#installation
[jrnl_dayone_config]: http://maebert.github.io/jrnl/advanced.html#dayone-integration