def substrings(string, dictionary)
  results = Hash.new(0)
  string_clean = string.strip.split.map { |word| word.gsub(/[[:punct:]]/, '').downcase }
  string_clean.each { |word| results[word] += 1 if dictionary.include?(word) }
  results
end
