# given an array with Integer values you need to find all the duplicated numbers

numbers = [1,2,2,3,4,5]

def find_duplicates(numbers)
  hash = {}

  numbers.each do |number|
    unless hash.keys.include?(number)
      hash[number] = 0
    end

    hash[number] = hash[number] + 1
  end

  hash
end

def find_duplicates2(numbers)
  seen = []

  numbers.each_with_object([]) do |number, dups|
    dups << number if seen.include?(number)

    seen << number
  end
end

puts find_duplicates(numbers)
puts find_duplicates2(numbers)
