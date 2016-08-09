system 'cls'

class Order
  def initialize(orderNo, table, item, amount, price)
    @orderNo = orderNo
    @table = table
    @item = item
    @amount = amount
    @price = price
  end
  attr_accessor :orderNo, :table, :item, :amount, :price
end

class Customer
  def initialize(bill)
    @bill = bill
  end
  attr_accessor :bill
end

# Terminal asking for order
  puts "What is the order"
  puts "1 for Pho"
  puts "2 for Summer Roll"
  print ">"
  item = gets.chomp.to_i

# Assigns price of items
    if item == 1
      print "Pho selected"
      price = 10
    elsif item == 2
      print "Summer Roll selected"
      price = 5
    end

# Asks the amount of item ordered
  puts ". How many? >"
  amount = gets.chomp.to_i
  if item == 1
    puts "Ordered #{amount} x Pho"
  elsif item == 2
    puts "Ordered #{amount} x Summer roll"
  end
  # puts "What is the table number"
  # table = gets.chomp

# Create object (orderNo, "Customer.new(0) replaces table(relationship), item, amount, price)
ord1 = Order.new("ord1", Customer.new(0), item, amount, price)

# Calculates the price of total order
ord1.table.bill = ord1.table.bill + price * amount

# Prints the total bill for current order
print "Customers bill is $#{ord1.table.bill}"
