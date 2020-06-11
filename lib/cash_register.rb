class CashRegister 
  attr_reader :discount 
  attr_accessor :total 
  
  def initialize (discount= 20)
    @total = 0 
    @discount = discount 
  end 
  
  def add_item (_title, price, quantity= 1)
    @total += price * quantity 
  end 
  
  def apply_discount 
    if discount != 0 
      self.total = (total * ((100.0-discount.to_f)/100)).i 
      "After the discount, the total is $#{self.total}."
    else 
      "There is no discount to apply."
    end 
    
    
    
  end
  
  
  
  
  
  
end 
