def get_name()
  print "Enter your name: "
  return gets.chomp
end

def greet(name)
  print "Hi #{name}!"
  if (name == "Jason")
    puts "That's a great name!"
  end
end

def get_number(number)
  print "What number would you like to test to see if it is divisible by 3? "
  return gets.chomp.to_i
end

def divisible_by_3?(number)
  return (number % 3 == 0)
end


name = get_name()
greet(name)
number = get_number()

if divisible_by_3?(number)
  puts "Your number is divisible by 3!"
end