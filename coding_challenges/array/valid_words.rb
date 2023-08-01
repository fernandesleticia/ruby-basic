# given an array of characters & one word, find out if the word can be made from these characters

word = "oranga"
characters = %w(a n g a r o)

def valid_word?(word, characters)
  return false unless word.length == characters.length

  word.each_char do |char|
    index = characters.index(char)
    characters.delete_at(index)
  end

  characters.empty?
end

puts valid_word?(word, characters)
