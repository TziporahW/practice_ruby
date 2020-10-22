require "./Food.rb"
require "./Store.rb"
require "./Saleable.rb"

item1 = Store.new(item: "shirts", color: "red", price: 20, sale: false)
item2 = Store.new(item: "pants", color: "denim", price: 25, sale: false)
item3 = Store.new(item: "coats", color: "white", price: 75, sale: true)
item4 = Food.new(item: "ice_cream", color: "vanilla", price: 5, sale: false, shelf_life: "1 day")
item2.price = 15
puts item1.color
puts item1.sale
puts item1.item
puts item4.shelf_life
item1.put_on_sale
item1.info
