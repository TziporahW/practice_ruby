#shirts = { color: :red, price: 20, sale: :false }
#pants = { color: :denim, price: 25, sale: :false }
#coats = { color: :white, price: 75, sale: :true }
#puts "#{shirts[:color]} shirts cost $#{shirts[:price]}."
#puts "#{pants[:color]} pants cost $#{pants[:price]}."
#puts "#{coats[:color]} coats cost $#{coats[:price]}."

class Store
	attr_reader :item, :color, :sale
	attr_writer :price
	def initialize(item, color, price, sale)
		@item = item
		@color = color
		@price = price
		@sale = sale
	end

	def info
		return "#{color} #{item} costs $#{@price}."
	end
end

item1 = Store.new("shirts", "red", 20, false)
item2 = Store.new("pants", "denim", 25, false)
item3 = Store.new("coats", "white", 75, true)
item2.price = 15
puts item1.color
puts item1.sale
puts item1.item



