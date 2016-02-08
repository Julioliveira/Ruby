=begin
1st name, last name
welcome 1 and last to analyser
lenght of users first and last name
display reverse users first and last name 
=end
puts "Hello, enter your first name"
firstName = gets.chomp
puts "Now your last name"
lastName = gets.chomp
puts "Hello, #{firstName} #{lastName} to the Analyser!"
puts "Your first name has #{firstName.length} characters and your last name has #{lastName.length} characters"
fullname = firstName + " " + lastName
puts "Your name revered is: " + fullname.reverse
