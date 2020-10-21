#shirts = { color: :red, price: 20, sale: :false }
#pants = { color: :denim, price: 25, sale: :false }
#coats = { color: :white, price: 75, sale: :true }
#puts "#{shirts[:color]} shirts cost $#{shirts[:price]}."
#puts "#{pants[:color]} pants cost $#{pants[:price]}."
#puts "#{coats[:color]} coats cost $#{coats[:price]}."

class Store
  attr_accessor :item, :color, :sale, :price

  def initialize(input_options)
    @item = input_options[:item]
    @color = input_options[:color]
    @price = input_options[:price]
    @sale = input_options[:sale]
  end

  def info
    return "#{color} #{item} costs $#{@price}."
  end
end

item1 = Store.new(item: "shirts", color: "red", price: 20, sale: false)
item2 = Store.new(item: "pants", color: "denim", price: 25, sale: false)
item3 = Store.new(item: "coats", color: "white", price: 75, sale: true)
item2.price = 15
puts item1.color
puts item1.sale
puts item1.item
