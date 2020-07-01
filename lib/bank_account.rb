class BankAccount
  attr_accessor :name, :balance, :status
  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
    
  end
  
  def name_error
    raise NameError if !name.is_a?(name)
    @name = name
  end 
  
  def deposit(amount) 
    @balance = @balance + amount
  end 
  
  def display_balance
    "Your balance is $#{@balance}." 
  end 
  
  def valid? 
    @balance > 0 && @status =="open"
  end 
  
  def close_account
    @status = "closed"
  end 
end
