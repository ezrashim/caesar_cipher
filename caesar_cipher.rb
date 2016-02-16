require 'pry'

def caesar_cipher(string, integer)
  string = string.downcase
  alphabet_array = ("a".."z").to_a
  string_array = string.split("")
  integer = integer.to_i

  string_array.map! do |letter|
    if /[a-z]/.match(letter)
      caesar_cipher_index = alphabet_array.index(letter) + integer
      letter = alphabet_array[caesar_cipher_index]
    else
      letter = letter
    end
  end

  encrypted_string = string_array.join
end
