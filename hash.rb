# Hash

my_details = {'name' => 'julio', 'favcolor' => 'blue'} #creating hash with strings as keys

puts my_details

puts my_details["favcolor"]

myhash = {a: 1, b: 2, c: 3} #creating hash with symbols as keys

puts myhash[:c]

myhash[:d] = 7 #adding a value to the hash

myhash.delete(:b) #deleting something from the hash

puts myhash

numbers = {a: 1, b: 2, c: 3, d: 4, e: 5, f:10}
numbers.each{|k, v| puts v} #iteration within the hash. only value

numbers.each{|k, v| puts "The key is #{k} and the value is #{v}"} #iteration through everything

puts numbers.each{ |k,v| numbers.delete(k) if v > 3 } #itaration with condition

numbers[:d] = 5
numbers[:e] = 9

puts numbers.select{ |k, v| v.odd?} #select in the hash
