def substrings(word, array)
    word = word.downcase
    word2 = word.split(" ")
    hash = Hash.new(0)
    array.each do |string|
        hash[string] = word.scan(string).count if word.include?(string)
    end
    hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)
