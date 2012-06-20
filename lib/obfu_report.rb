require "obfu_report/version"

module ObfuReport
  # Your code goes here...
  def original(string, list)

    osline = "Original string:   #{string} \nOriginal list:  #{list}"
    return osline

  end
  # "obfuscate" returns the string with all words from the list obfuscated.
  #   obfuscate("big string of big words is bigger", ["big", "words"])
  #   ==> "*** string of *** ***** is bigger"
  def obfuscate(string, list)
    # check that input is a string and an array
    if (string.is_a? String)&&(list.is_a? Array)
      # iterate each item in the list
      numb = 0
      x = ""
      list.each do |wrd|
        # look for this word in the string
        numb = wrd.length
          numb.times do
            x << "*"
          end
        string = string.gsub(/\b#{wrd}\b/, x)
        x = ""
      end
      obline =  "Obfuscated: #{string}"
      return obline
    else
      obline = "bad input, try again.\n #{string}  #{list}"
      return obline
    end
  end
  # "report" returns a hash containing the list of words and their associated frequency in the string.
  # report("big string of big words is bigger", ["big", "words"])
  # ==> {"big" => 2, "words" => 1}
  def report(string,list)
    if (string.is_a? String)&&(list.is_a? Array)        
      line = {}
      list.each do |word|
        test = string.split.count(word)
        line[word] = test.to_s
      end
      # string = ("Word count: " + line)
      return line
    else
      line = "bad input, try again. \n #{string}  #{list}"
      return line
    end
  end
end

class Obfu_report
  include ObfuReport
end
