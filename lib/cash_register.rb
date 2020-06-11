class CashRegister 
  attr_reader :discount 
  attr_accessor :total 
  
  def initialize(discount = 0)
    @total = 0 
    @discount = discount 
    @items = []
  end 
  

  def add_item(item, price, quantity = 1)
    @price = price
    @total += price * quantity
    if quantity > 1
      counter = 0
      while counter < quantity
        @items << item
        counter += 1
      end
    else
      @items << item
    end
  end

  
  def apply_discount 
    @total -= (@total * @discount.to_f / 100).round 
    if @discount != 0 
      "After the discount, the total comes to $#{@total}."
    else 
        "There is no discount to apply."
    end 
  end
  
end 
  

