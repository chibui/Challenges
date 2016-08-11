class Car
  def initialize(make, age, topSpeed, gasTankSize)
    @make = make
    @age = age
    @topSpeed = topSpeed
    @gasTankSize = gasTankSize
  end
  attr_accessor :make, :age, :topSpeed, :gasTankSize
end

class Driver
  def initialize(name, car, driverAge, contact)
    @name = name
    @car = car
    @driverage = driverAge
    @contact = contact
  end
  attr_accessor :name, :car, :driverAge, :contact
end

ferrari = Car.new("Ferrari", 3, 280, 100)
chi = Driver.new("Chi", ferrari, 35, "0400")
make = ferrari.make
age = ferrari.age
topSpeed = ferrari.topSpeed
gasTankSize = ferrari.gasTankSize
name = chi.name
driverAge = chi.driverAge
contact = chi.contact

system 'cls'
# Terminal to ask for what user wants to know
puts "The what do you want to know? >"
puts "For car's make enter 1"
puts "For car's age enter 2"
puts "For car's Top Speed enter 3"
puts "For car's make enter 4"
puts "For the drivers details of this car enter 5"
input = gets.chomp.to_i

if input == 1
  print "The cars make is #{make.upcase}"
elsif input == 2
  print "The cars age is #{age}"
elsif input == 3
  print "The cars top speed is #{topSpeed}"
elsif input == 4
  print "The cars gas tank size is #{gasTankSize}"
elsif input == 5
  print "The driver of this car is #{name.capitalize} he is #{driverAge} years old and his contact is #{contact}"
end
