class CashRegister
  attr_accessor :discount, :total
  @@transaction = []
  @@cart = []
  
  def initialize(discount = 0)
    @total = 0 
    @discount = discount
    @items = []
  end
  
  def self.total 
    @@transaction.reduce(0, :+)
  end
  
  def add_item(title, price, quantity = 1)
    info = {}
    info[:name] = title 
    info[:price] = price
    info[:quantity] = quantity
    
    @@cart << info 
    
    @total += price * quantity
  end
  
  def apply_discount
    if @discount == 0 
      puts "There is no discount to apply."
    else 
      @total -= @total * @discount / 100
      puts "After the disount, the total comes to #{@total}."
    end
  end
  
  def items 
    
  end
  
  def void_last_transaction
    @@transaction.pop
    self.total 
  end
end
