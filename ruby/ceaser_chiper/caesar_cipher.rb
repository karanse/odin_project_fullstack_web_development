def caesar_cipher(string, key)
  alphabet = 'abcdefghijklmnopqrstuvwxyz'.chars
  given_string = string.chars
  encyrpted_string = []
  given_string.each do |char|
    # scenario small letter and 1 alphabet is enough
    if alphabet.include?(char) && (alphabet.index(char) + key) < 26
      encyrpted_string.push(alphabet[alphabet.index(char) + key])
    # scenario with capital letters and 1 alphabet is enough
    elsif alphabet.include?(char.downcase) && (alphabet.index(char.downcase) + key) < 26
      encyrpted_string.push(alphabet[alphabet.index(char.downcase) + key].upcase)
    # scenario small letter and 1 alphabet is not enough
    elsif alphabet.include?(char) && (alphabet.index(char) + key) > 26
      new_alphabet = alphabet + alphabet
      encyrpted_string.push(new_alphabet[alphabet.index(char) + key])
    # scenario with capital letters and 1 alphabet is not enough
    elsif alphabet.include?(char.upcase) && (alphabet.index(char.upcase) + key) > 26
      new_alphabet = alphabet + alphabet
      encyrpted_string.push(new_alphabet[alphabet.index(char.downcase) + key]).upcase
    else
      # adding punctuations, spaces, etc.
      encyrpted_string.push(char)
    end
  end
  encyrpted_string.join
end
