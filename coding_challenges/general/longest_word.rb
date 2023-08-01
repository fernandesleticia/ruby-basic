
words = %w(cake red cat apple march)

def longest_word(words)
  longest = words.inject do |memo, word|
    memo.length > word.length ? memo : word
  end
end

puts longest_word(words)
