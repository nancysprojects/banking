#Create a bank account class
#Allow the users to instantiate new objects from this class with a name and a starting balance
class BankAccount

  def initialize(name = '',startBalance=0, localpin = 0)
    @name = name
    @balance = startBalance


  end
	def displayBalance(localpin)
    	if verify_pin(localpin)
      		puts (@name + ' your balance is ' + @balance.to_s)
		 else
      		puts('Incorrect pin, try again.')
    	end
  	end

  	def depositMoney(localpin,amount)
    	if verify_pin(localpin)
      		@balance += amount
    	else
      		puts('Incorrect pin number, please try again')
  		end
  	end
  	def withdrawMoney(localpin,amount)
    	if verify_pin(localpin)
      		@balance -= amount
      	else
      		puts('Incorrect pin number, please try again')
  		end
  	end
  	private
  	def verify_pin(pinNum)
    	if pinNum == 123
        	return true
      	else
        	return false
    	end

  	end

end
b = BankAccount.new('Colin',1000000)
b.displayBalance(123)
b.withdrawMoney(123,10000)
