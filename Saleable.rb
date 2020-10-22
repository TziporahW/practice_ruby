module Saleable
  def put_on_sale
    @sale = true
    @price = @price - (@price * 0.10)
  end
end
