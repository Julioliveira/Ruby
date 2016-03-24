# Convert an hour in 24-hour notation to 12-hour notation

hour_table = ["midnight", "1 a.m.", "2 a.m.", "3 a.m.",
  "4 a.m.", "5 a.m.", "6 a.m.", "7 a.m.",
  "8 a.m.", "9 a.m.", "10 a.m.", "11 a.m.",
  "noon", "1 p.m.", "2 p.m.", "3 p.m.",
  "4 p.m.", "5 p.m.", "6 p.m.", "7 p.m.",
  "8 p.m.", "9 p.m.", "10 p.m.", "11 p.m."]
  
hour24 = -1  # the input is a number
hour12 = "" # the output is a string

while hour24 < 0 || hour24 > 23
  print "Enter an hour from 0-23: "
  hour24 = gets.to_i
end

hour12 = hour_table[hour24];

puts hour12
