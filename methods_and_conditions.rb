def multiply (num1, num2)

    num2.to_f * num1.to_f
end

def divide (num1, num2)
    num1.to_f / num2.to_f
end

def sum (num1, num2)
    
    num1.to_f + num2.to_f
end

def subtract (num1, num2)
  num1.to_f - num2.to_f
end

def remainder (num1, num2)
  num1.to_f % num2.to_f
end

puts "Enter the first number"
firstNumber = gets.chomp
puts "Enter the second number"
secondNumber = gets.chomp

puts "What do you want to do? 1) Multiply 2)Divide 3)subtract 4) Find remainder"

prompt = gets.chomp

if prompt.to_i == 1
  puts "You have chosen to multiply #{firstNumber} and #{secondNumber}"
  puts multiply(firstNumber, secondNumber)

elsif prompt.to_i == 2
  puts "You have chosen to divide #{firstNumber} and #{secondNumber}"
  puts divide(firstNumber, secondNumber)
elsif prompt.to_i == 3
  puts "You have chosen to subtract #{firstNumber} and #{secondNumber}"
  puts subtract(firstNumber, secondNumber)
elsif prompt.to_i == 4
  puts "You have chosen to find remainder of #{firstNumber} and #{secondNumber}"
  puts remainder(firstNumber, secondNumber)

else
  puts "You have entered an invalid number"

end