militarHour = "-1";
hour12 = ""
hour24 = 0
min = ""

puts 'Enter the military hour'
militarHour = gets.chomp
hour24 = militarHour[0..1].to_i
min = militarHour[2..3]

if hour24 == 0 then
  hour12 = "12:#{min} a.m."
elsif militarHour.size != 4
  hour12 = ""   
elsif hour24 < 0 || hour24 > 23 || min.to_i > 59
  hour12 = ""
elsif hour24 <= 11 then
  hour12 = "#{hour24}:#{min} a.m."
elsif hour24 == 12 then
  hour12 = "12:#{min} p.m."
elsif hour24 <= 23 then
  hour12 = "#{hour24 - 12}:#{min} p.m."
end
puts hour12