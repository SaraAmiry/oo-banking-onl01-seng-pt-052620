class Transfer
 attr_accessor :sender, :receiver, :status, :amount
 
 def initialize(sender, receiver, amount = 50)
   @status = 'pending'
   @amount = amount
   @sender = sender 
   @receiver = receiver  
 end 
 
 def valid?
   @receiver.valid? && @sender.valid?
 end 
 
 def execute_transaction 
   transaction = sender.balance - amount
   sender.balance !valid?
   puts "Transaction rejected. Please check your account balance."
   
 end 
 
 def reverse_transfer 
   
 end 
end
