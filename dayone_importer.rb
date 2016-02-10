require 'cgi'
require 'csv'
require 'shellwords'

def readfile(file)
  data = {}

  CSV.foreach(file) do |row|
    date = row[0].strip
    topic = row[1].strip
    text = row[2].strip

    text = topic + "\n\n" + text

    puts date
    puts text

    system("jrnl dayone #{date}: #{Shellwords.escape(text)}")

    puts "-------------------------------------------------------------"

  end
end

readfile(ARGV[0])