def menu
  puts 'Options: '
  puts '(D)eposit'
  puts '(W)ithdraw'
  puts '(B)alance'
  puts '(Q)uit'
  gets.chomp
end


Starting_Balance = 100.0 #a variable started with capital letter is a Constante
File_Name = 'balance.txt'

if File.exist?(File_Name)
  file = open(File_Name)
  balance = file.read.to_f
else
  balance = Starting_Balance
end

action = ' '

loop do
  action = menu

  if action.upcase == 'D'
    puts 'Insert the value to deposist:'
    deposit = gets.chomp.to_f

    if deposit > 0
      balance += deposit
      puts "The current balance is #{balance}"
    else
      puts 'Invalid Value: it must be greater than 0'
    end

  elsif action.upcase == 'W'
    puts 'Insert the value to withdraw:'
    withdraw = gets.chomp.to_f

    if withdraw > 0 && withdraw <= balance
      balance -= withdraw
      puts "The current balance is #{balance}"
    else
      puts 'Invalid Value: it must be between 0 and your balance'
    end

  elsif action.upcase == 'B'
    puts "Your current balance is: #{balance}"
  elsif action.upcase == 'Q'
    File.write(File_Name, balance)
    break
  else
    puts 'Inputs must be D, W, B or Q'
  end
end