module InitializeVehicleable
  def initialize
    @speed = 0
    @direction = "north"
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car
  include InitializeVehicleable

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike
  include InitializeVehicleable

  def ring_bell
    puts "Ring ring!"
  end
end

bike = Bike.new
bike.ring_bell
bike.turn("south")
