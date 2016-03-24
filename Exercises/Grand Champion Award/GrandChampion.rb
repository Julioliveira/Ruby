FileName = 'placing.txt'

if File.exist?(FileName)
  file = open(FileName)
  names = []
  ponctuation = 0
  winner = ""
  points = 0
else
  puts "The file doesn't exist"
end

while (line = file.gets)
  ponctuation = 0
  line = line.split(',')
  name = line.shift
  line.each do |value|
    if value.to_i == 1
      ponctuation+= 6
    elsif value.to_i == 2
      ponctuation += 4
    elsif value.to_i == 3
      ponctuation += 2
    else
      next
    end   
  end 
  
  if ponctuation > points
    winner = name
    points = ponctuation
  end
  names << [name, ponctuation]
       
end

puts "The winner is: #{winner} with #{points} points"
names.each do |value|
  puts value[0].to_s + ' ' + value[1].to_s 
end
file.close