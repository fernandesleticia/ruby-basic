

number = 20

def prime_number?(number)
  divider = number
  divided = 0

  number.times do
    divided += 1 if number % divider == 0
    divider -= 1

    return false if divided > 2
  end

  divided == 2
end

numbers = [1, 9, 17, 5]

def sum_prime_numbers(numbers)
  prime_numbers = numbers.select { |num| prime_number?(num) }
  prime_numbers.reduce(:+)
end

# puts prime_number?(number)
puts sum_prime_numbers(numbers)
