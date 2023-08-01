
numbers = [4, 2, 6, 5]
n = 5

def numbers_grater_than(numbers, n)
  numbers_grater_than = 0

  numbers.each do |number|
    numbers_grater_than += 1 if number > n
  end

  numbers_grater_than
end

puts numbers_grater_than(numbers, n)
