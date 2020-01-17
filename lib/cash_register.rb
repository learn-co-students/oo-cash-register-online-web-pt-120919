require "pry"
class CashRegister
  
  attr_accessor :total, :discount, :item
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @purchace = []
  end
  
  
  def total 
    @total
  end
  
  
  def add_item(item,price,quantity = 1)
    if quantity>1
      i=0
      while i<quantity
        @purchace << item
        i+=1
      end
    else
      @purchace << item
    end
    # @price = price
    # @total += price*quantity
    # @last_transaction_amount = @total
    # @total
     
     @last_transaction = price*quantity
     @total = @total+@last_transaction
    @total
  end
  
  def apply_discount
  #binding.pry  
   
    @total -= @total*(discount.to_f/100)
    @total.to_i 
    if discount == 0
      return "There is no discount to apply."
    else
    return "After the discount, the total comes to $#{@total.to_i}."
    end
  end
  
  
  def items
    @purchace
  end
  
  
  def void_last_transaction 
   @total = @total-@last_transaction
   
  end
 end













