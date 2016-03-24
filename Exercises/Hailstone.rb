puts "Enter a number"
number = gets.chomp.to_i
line = 0
items = 0
loop do
  print number.to_s + ' '
  items+=1
  line+=1
  if number == 1
    print "\n"
    puts "This sequence had #{items} items"
    break
  end
  if number.even?
    number /=2
  else
    number = (number*3) + 1
  end
  
  if line == 10
    print "\n"
    line = 0
  end
end