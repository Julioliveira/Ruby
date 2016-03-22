dial_book = {
  "new york" => "212",
  "new brunswick" => "732",
  "east bay" => "510",
  "new jersey" => "201",
  "los angeles" => "213",
  "long island" => "516",
  "albany" => "518",
  "syracuse" => "315",
  "san francisco" => "650",
  "centralia" => "618"
}
def displayNames (hash)
  puts "Available cities: "
  hash.each{|k,v| puts k}
  puts ''
end

def getAreaCode(hash, k)
  if hash.has_key?(k)
    "The code is: #{hash[k]}"
  else
    "#{k} isn't in the dictionary"
  end
end
#method to display city names
#methods to get area code, dial_book and city names

loop  do
  puts "Do you want to lookup an area code? Y/N"
  if gets.chomp.upcase != "Y"
    break
  end
  displayNames(dial_book)

  puts "Enter a city to know the code area"
  puts getAreaCode(dial_book, gets.chomp.downcase)

end