require_relative ('item.rb')

class Cart

  def initialize(name)
    @name = (name)
    @my_cart = []
    @total = 0
  end
# READERS
 def my_cart
   @my_cart
 end
# WRITERS
  def add(item)
    @my_cart << (item)
  end

  def remove(item)
    @my_cart.delete(item)
  end

  def total
    total = 0
    @my_cart.each do |x|
      total += x.price
    end
    return "Your total is #{total}"
  end

  def tax_total
    tax_total = 0
    @my_cart.each do |x|
      tax_total += x.tax_price
    end
    return "Your total with tax is #{tax_total}"
  end

end

nikes = Item.new('Cortez', 80)
adidas = Item.new('Gazelle', 80)
vans = Item.new('Sk8 Low', 80)

tylers_cart = Cart.new('Tyler')

tylers_cart.add(nikes)
tylers_cart.add(adidas)
tylers_cart.add(vans)
p tylers_cart.my_cart
p tylers_cart.total
p "-"*30
tylers_cart.remove(nikes)
p tylers_cart.my_cart
p tylers_cart.tax_total
