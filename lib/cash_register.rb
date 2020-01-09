class CashRegister
  attr_accessor :total, :discount, :last_transaction
  
  def initialize(discount = 0)
    @total = 0 
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, quantity=1) 
    quantity.times do 
      @items << title 
    end
    sub_total = (price * quantity) 
    @total += sub_total
    @last_transaction = sub_total
    @total
  end 
  
  def apply_discount
    if @discount > 0
      discounted_amount = @total * (@discount.to_f / 100)
      new_price = @total - discounted_amount 
      @total = new_price 
      "After the discount, the total comes to $#{new_price.to_i}." 
    else
      "There is no discount to apply." 
    end
  end

  def all_items 
    @items 
  end 
  
  def items 
    all_items.each do |item| 
      item
    end
  end
  
  def void_last_transaction 
    @total -= @last_transaction
  end 
  
end

cash = CashRegister.new 
cash.add_item("computer", 1000)
puts cash.total
puts cash.discount
puts cash.apply_discount 

