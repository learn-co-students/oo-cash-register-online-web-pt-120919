require"pry"
class CashRegister
attr_accessor :total, :discount,:last_amount
def initialize(discount=0) #initialized the discount set to 0 
@items = [] every time we initialize we have are empty array if empty 
@total =0
@discount = discount
end

  def add_item(title,price,quantity = 1)
    @total += price * quantity # the total is now equaled to the price of the iteam times the quantity of the iteam 
    quantity.times do 
    @items << title 
end

  @last_amount = price*quantity
end

def apply_discount 
if @discount > 0 
@total = @total-(@total * @discount/100) #pemdas this is the formula for applaying a discount 
return"After the discount, the total comes to $#{@total}."
else 
return "There is no discount to apply."
  end
end
def items
  return @items
end

def void_last_transaction
@total=@total -@last_amount 
#could have been @total-=@last_amount
end
end
