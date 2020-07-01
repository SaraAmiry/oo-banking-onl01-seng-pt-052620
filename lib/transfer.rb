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
   Self.close_
   
 end 
 
 def reverse_transfer 
   
 end 
end
