require 'pry'
class CashRegister
  @@all = []
  @@all_items = []
  attr_accessor :total, :discount
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @total = 0 
  end
  
  def total
    @total
  end
  
  def add_item(item, price, quantity = 0)
    @item = item
    @price = price
    @@all_items << @item
    if quantity > 1 
    new_total = quantity * price
    @total += new_total
  else
    new_total = price 
    @total += new_total
  end

end
  
  def apply_discount
    if discount == 0 
      p "There is no discount to apply."
    else 
    percent = (@price * @discount)/100
    @total -= percent
    p "After the discount, the total comes to $#{@total}."
    end
end
  def items
    
end

def void_last_transaction
  
    
  end
  
end
