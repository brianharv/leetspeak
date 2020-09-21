require('pry')


def leetspeak(string)
  check_sentence = string.gsub!(/[eoI]/, 'e' => 3, 'o' => '0', 'I' => '1')
  new_sentence = check_sentence.split(" ") # need bang?
  new_sentence.each do |word|
    if word[0] == 's' || word[0] == "S"
      word = word.split("") # store word in variable so the changes transfer and no bang is needed
      word.shift.gsub!(/[s]/, 'z')
      word = word.unshift('s').join("") # store word in variable so the changes transfer and no bang is needed
    else
      word.gsub!(/[s]/, 'z')
    end
  end
  return new_sentence.join(" ")
end  


#(?<!_)s

# string.gsub!(/\b[z]/, 's')

