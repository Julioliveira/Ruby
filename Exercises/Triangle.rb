puts "Enter a number"
number = gets.chomp.to_i
spaces = 1
number.downto(1) do |num|
spaces.downto(1) do print ' '
end
spaces+=1
num = 2 * num - 1
num.downto(1) do print '*'
end
print "\n"
end