class CashRegister
  
  attr_accessor :discount,:total,:items,:transaction_list
  
  def initialize(employee_discount=nil)
    self.total = 0
    self.items = []
    self.transaction_list = []
    if employee_discount!= nil
      self.discount = employee_discount
    end
  end
  
  def add_item(title,price,quantity=1)
    self.transaction_list << [title , (quantity*price)]
    quantity.times do
      self.items << title
      self.total += price 
    end
  end
  
  def apply_discount
    if self.discount != nil
      percentage_discount = self.discount/100.0
      self.total -= (self.total * percentage_discount)
      "After the discount, the total comes to $800."
    else
      "There is no discount to apply."
    end
  end
  
  def void_last_transaction
    self.total -= self.transaction_list[-1][1]
  end
  
end