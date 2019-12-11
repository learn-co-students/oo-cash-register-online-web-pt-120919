class CashRegister
  def initialize(disc = 0 )
    @total = 0 
    @discount= disc
    @items = []
  end
  
  
  attr_accessor :discount, :total, :items 
  
  def add_item(title, price, quantity = 1 )
    @total += quantity*price 
    quantity.times {@items << title}  
    @last_trans= [price*quantity, title, quantity]
    
  end 
  
  def apply_discount
    if @discount > 0 
      @total -= (@total*@discount/100)
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end
  
  def void_last_transaction
    @total -= @last_trans[0]
    @last_trans[2].times {@items.delete(@last_trans[1])}
  end
  
end
