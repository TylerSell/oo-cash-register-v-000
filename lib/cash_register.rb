class CashRegister
  attr_accessor :discount, :total, :items, :last_transaction
  @@transaction = []
  @@cart = []
  
  def initialize(discount = 0)
    @total = 0 
    @discount = discount
    @items = []
  end
  
  def self.total 
    
  end
  
  def add_item(title, amount, quantity = 1)
    
  end
  
  def apply_discount
    if @discount != 0 
      self.total = (total * ((100.0 - discont.to_f)/100)).to_i
      
    else 
      @total -= @total * @discount / 100
      puts "After the disount, the total comes to #{self.total}."
    end
  end
  
  def items 
    
  end
  
  def void_last_transaction
    @@transaction.pop
    self.total 
  end
end
