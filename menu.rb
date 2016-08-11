exit = false
class Order
  def initialize
  end
    attr_accessor :amount, :bill,:command_amount

  def amount_capture
      puts "How many would you like"
      @command_amount = gets.chomp
#calculates order item * command_amount then stores total in order_no.rb when to open file?

  end
end

class Menu
  def initialize
  end
  attr_accessor  :value

  def menu
    puts "Welcome to Burger Town"
    puts "1. The Lot - $10"
    puts "2. Cheeseburger - $8"
    puts "3. Fries - $3"
    puts "4. Coke - $3"
    puts "5. Pay Bill"
    puts "6. Exit"
  end
  def test(num)
# tidy up if elses with an array
# ordered = [10, 8, 3, 3]
# @ordered = ordered
    @num = num
    if @num == 1
      @value = 10
    elsif @num == 2
      @value = 8
    elsif @num ==3
      @value = 3
    else
      @value = 3
    end
  end
end

burger = Menu.new
order = Order.new

system 'cls'

# store order in text menu

until exit do
  burger.menu
  command = gets.chomp

  if command == '1'
    system 'cls'
    order.amount_capture
    burger.test(1)

  elsif command == '2'
    order.amount_capture
    burger.test(2)

  elsif command == '3'
    order.amount_capture
    burger.test(3)

  elsif command == '4'
    order.amount_capture
    burger.test(4)

  elsif command == '5'
    system 'cls'
    bill = order.command_amount.to_i * burger.value.to_i
    puts "Your bill is $#{bill}"
    exit = true

  elsif command == '6'
    exit = true

  else
    puts "Please choose only from menu options"
  end
end
