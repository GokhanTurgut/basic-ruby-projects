# @param string [String] input string to be encrypted
# @param shift [Integer] number of places to shift each char
# @return [String] encrypted string
def caesar_cipher(string, shift)
  encrypted_string = ""
  string.each_char do |char|
    if char.ord >= 65 && char.ord <= 90
      encrypted_string += ((char.ord + shift - 65) % 26 + 65).chr
    elsif char.ord >= 97 && char.ord <= 122
      encrypted_string += ((char.ord + shift - 97) % 26 + 97).chr
    else
      encrypted_string += char
    end
  end
  encrypted_string
end
