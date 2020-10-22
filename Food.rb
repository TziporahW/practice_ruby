require "./Store.rb"

class Food < Store
  attr_accessor :shelf_life

  def initialize(input_options)
    super
    @shelf_life = input_options[:shelf_life]
  end
end
