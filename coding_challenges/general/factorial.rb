
number = 4

def factorial(number)
  numbers = [*1..number]
  print numbers
  numbers.reduce(1, :*)
end

puts factorial(number)
