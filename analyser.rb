=begin
1st name, last name
welcome 1 and last to analyser
lenght of users first and last name
display reverse users first and last name
=end
def multiply(num1, num2)
  num1.to_f * num2.to_f
end
puts "Hello, enter your first name"
firstName = gets.chomp
puts "Now your last name"
lastName = gets.chomp
puts "Hello, #{firstName} #{lastName} to the Analyser!"
puts "Your first name has #{firstName.length} characters and your last name has #{lastName.length} characters"
fullname = firstName + " " + lastName
puts "Your name revered is: " + fullname.reverse
puts "Enter your first number"
num1 = gets.chomp.to_f
puts "Enter your second number"
num2 = gets.chomp.to_f
puts "The first number multiplied by the second is: #{multiply(num1,num2)}"
puts "The first number divided by the second is: #{num1/num2}"
puts "The first number subtracted by the second is: #{num1-num2}"
puts "The first number mod of the second is: #{num1%num2}"
