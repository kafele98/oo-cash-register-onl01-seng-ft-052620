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
    @total -= (@total * @discount.to_f / 100).round 
    if @total != 0 
      "After the discount, the total comes to $#{@total}."
    else 
        "There is no discount to apply."
    end 
  end
  
  def items []
    
  end 
  
  
  
  
  
end 
