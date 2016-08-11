class Customer
  def initialize(name, account, email, address, contact)
    @name = name
    @account = account
    @email = email
    @address = address
    @contact = contact
  end

  attr_accessor :name, :account, :email, :address, :contact
end

class BankAccount
  def initialize(balance)
    @balance = balance

  end
  attr_accessor :balance
end
# attr_accessor :name, :account, :email, :address, :contact
chi = Customer.new("chi", BankAccount.new(1000), "chi@chi.com", "1 Street Ave", 0400)

while chi.account.balance > 0

# defines what filename we are referring to
filename = "balance.txt"
# Creates object called txt with value of filename to open file all caps is a constant never changes

TXT = open(filename, 'r+')
TXT.rewind
  puts "What do you want to do?"
  puts " 1. Get Balance"
  puts " 2. Withdraw $20"
  puts " 3. Exit"
  answer = gets.chomp.to_i

# If user enters 1 then it prints the balance
  if answer == 1
    system 'cls'
    puts "Hey #{chi.name}, your balance is $#{TXT.read.to_i}"

# If user enters 2 then it deducts $20 from balance and prints message with new balance
  elsif answer == 2
    system 'cls'
    chi.account.balance = TXT.read.to_i - 20

# puts "Hey #{chi.name}, thank you for withdrawing $20"
    puts "Your new balance is $#{chi.account.balance}"
    TXT.rewind
    TXT.write("#{chi.account.balance}")

    TXT.close
# if user enters 3 then will break from "while chi.account.balance != 0"(line 23) and prints message
  elsif answer == 3
    system 'cls'
    puts "Thank You for banking with us"
    break

  end

end
