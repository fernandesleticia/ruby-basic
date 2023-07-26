# given an array of strings, create a hash for the strings upcase

strings = ["ash", "ball", "car"]

def upcase(strings)
  strings.each_with_object({}) do |str, hash|
    hash[str] = str.upcase
  end
end

puts upcase(strings)
