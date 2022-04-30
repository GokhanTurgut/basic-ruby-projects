# @param sentence [String] the input sentence where the words in them will be searched in the dictionary
# @param dictionary [String] input dictionary to be searched upon
# @return [Hash] Frequency of words
def substrings(sentence, dictionary)
  word_count = Hash.new(0)
  words = sentence.downcase.split(' ')
  words.each do |word|
    dictionary.each do |dic_word|
      word_count[dic_word] += 1 if word.include?(dic_word)
    end
  end
  word_count
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]

p substrings('below', dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)
