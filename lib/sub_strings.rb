def substrings(str, dict)
  substrings = Hash.new(0)
  words = str.downcase.split(" ")
  words.each do |word|
    dict.each do |substring|
      if word.include?(substring)
        substrings[substring] += 1
      end
    end
  end
  substrings
end

# dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
# puts substrings("Howdy partner, sit down! How's it going?", dictionary)
# => {"below"=>0, "down"=>1, "go"=>1, "going"=>1, "horn"=>0, "how"=>2, "howdy"=>1, "it"=>2, "i"=>3, "low"=>0, "own"=>1, "part"=>1, "partner"=>1, "sit"=>1}
