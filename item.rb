class Item

@@all_items = []
@@usa_tax_rate = 0.0895

  def initialize(name, price)
    @name = name
    @base_price = price
    @tax_rate = @@usa_tax_rate
    @@all_items << self
  end
# READERS
  def self.all_items
    @@all_items
  end

  def name
    @name
  end

  def price
    @base_price
  end

  def tax_price
    @base_price += @base_price * @tax_rate
  end
# WRITERS
  def delete
    @@all_items.delete(self)
  end
end

nikes = Item.new('Cortez', 80)
adidas = Item.new('Gazelle', 80)
vans = Item.new('Sk8 Low', 80)
