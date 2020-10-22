class Vehicle
  def initialize(*)
    @speed = 0
    @direction = "north"
  end

  def break
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car < Vehicle
  attr_accessor :model, :make, :fuel

  def initialize(stuff)
    super
    @make = stuff[:make]
    @fuel = stuff[:fuel]
    @model = stuff[:model]
  end

  def honk_horn
    puts "Beeeeeeep!"
  end

  def info
    puts "Your #{make} #{model} car takes #{fuel} gas."
  end
end

class Bike < Vehicle
  attr_accessor :type, :weight

  def initialize(stuff)
    @type = stuff[:type]
    @weight = stuff[:weight]
  end

  def ring_bell
    puts "Ring ring!"
  end

  def info
    puts "Your #{type} weighs #{weight}."
  end
end

car = Car.new(make: "Honda", model: "civic", fuel: "Ethanol")
bike = Bike.new(type: "mountain bike", weight: "29 lbs")
bike.ring_bell
car.honk_horn
car.info
bike.info
car.accelerate
