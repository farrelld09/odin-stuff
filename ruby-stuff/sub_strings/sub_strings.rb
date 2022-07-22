def substrings (word_string, word_dict)
  substring_appearances = Hash.new()
  
  downcase_words = word_string.downcase

  word_dict.each do | dict_word |
    sub_string_count = downcase_words.scan(dict_word).length
    substring_appearances[dict_word] = sub_string_count unless sub_string_count == 0
  end
  
  return substring_appearances
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("below", dictionary)
# should be{ "below" => 1, "low" => 1 }

puts substrings("Howdy partner, sit down! How's it going?", dictionary)
# should be { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }