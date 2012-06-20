# ObfuReport

This gem receives a string and an array then obfuscates the string based on the array values and counts the frequency of array words that exist in the string.

## Installation

Add this line to your application's Gemfile:

    gem 'obfu_report'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install obfu_report

## Usage

You can test this gem from the command line by copying the following code:

    BEGIN CUT HERE

    require 'obfu_report'


    puts "Enter in a string of words"
    str = gets.chomp
    puts "Enter in a list of words one at a time followed by the word 'exit' on the last line"
    i = 0
    lst = []
    userword = 'word1'
    while userword != 'exit'
      userword = gets.chomp
      lst[i] = userword
      i = i + 1
      if userword == 'exit'
        lst.pop
      end
    end

    o = Obfu_report.new
    line1 = o.original(str,lst)
    line2 = o.obfuscate(str,lst)
    line3 = o.report(str,lst)
    puts line1
    puts line2
    puts line3
    
    END CUT HERE

Save this code as a file named test.rb.

Once you've installed this gem locally...from the command line type 'ruby test.rb'
Enter in a string and a list as the programs instructions state...then type 'exit'


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
