require "./Saleable.rb"

class Store
  include Saleable
  attr_accessor :item, :color, :sale, :price

  def initialize(input_options)
    @item = input_options[:item]
    @color = input_options[:color]
    @price = input_options[:price]
    @sale = input_options[:sale]
  end

  def info
    puts "#{color} #{item} costs $#{@price}."
  end
end
