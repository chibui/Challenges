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
    @age = driverAge
    @contact = contact
  end
  attr_accessor :name, :car, :driverAge, :contact
end

ferrari = Car.new("Ferrari", 3, 280, 100)
chi = Driver.new("Chi", ferrari, 35, 0400)
make = ferrari.make
age = ferrari.age

# terminal to output make, age of car
puts "The #{make} is #{age} years old"
