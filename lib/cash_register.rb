class CashRegister
  
  attr_accessor :total, :discount, :items
  
  
  def initialize(discount = 0)
    @total = 0.0
    @items = []
    @last_transaction_price = nil
    @last_transaction_quantity = nil
    @discount = discount
  end
  
  def add_item(item, price, quantity = 1)
    @total += price * quantity
    quantity.times { @items.push(item) }
    @last_transaction_price = price
    @last_transaction_quantity = quantity
  end
  
  def apply_discount
    if @discount != 0
      @total -= (@discount / 100.0) * @total
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end
  
  def void_last_transaction
    @last_transaction_quantity.times { @total -= @last_transaction_price }
  end
  
end
