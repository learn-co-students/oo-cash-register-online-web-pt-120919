require 'pry'
class CashRegister
  @@all = []
  
  attr_accessor :total, :discount, :last_transaction
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction = []
  end
  
  def total
    @total
  end
  
  def add_item(item, price, quantity = 1)
    @price = price
    @new_total = quantity * price
    @total += @new_total
    
    if quantity > 1
      counter  = 0
      @last_transaction << @new_total
      while quantity > counter  
      @items << item
      counter += 1
    end
   else 
     @last_transaction << @new_total
     @items << item 
   end
    #binding.pry
end #def end
  
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
    @items
end

def void_last_transaction
  @total -= @new_total
  @last_transaction.pop
  if @last_transaction.nil?
    @total = 0 
  end 
    
  end
  
end
