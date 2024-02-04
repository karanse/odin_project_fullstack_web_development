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


## TODO: refacotr code with each_char(string enumartor) and user % 26., module

# def caesar_cipher(text, number)
#   alphabet = ('A'..'Z').to_a
#   phrase_output = ""

#   text.each_char do |char|
#     char_upcase = char.upcase

#     if alphabet.include?(char_upcase)
#       original_index = alphabet.index(char_upcase)
#       shifted_index = (original_index + number) % 26
#       shifted_char = alphabet[shifted_index]

#       phrase_output << (char == char_upcase ? shifted_char : shifted_char.downcase)
#     else
#       phrase_output << char
#     end
#   end

#   puts "Frase codificada: #{phrase_output}"
# end
