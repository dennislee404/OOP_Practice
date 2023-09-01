#Design a class BankAccount with attributes account_number, balance, and methods to transfer money to another account.  
#Implement methods to add accounts, deposit money, withdraw money, and check balances.

class BankAccount
	attr_accessor :account_number, :balance
	def initialize(balance=0)
		@account_number = rand(1000000..9999999)
		@balance = balance
	end

	def transfer(another_account,amount)
		@balance -= amount
		another_account.balance += amount	
		puts "Transferred #{amount} to #{another_account.account_number}."
	end

	def deposit(amount)
		@balance += amount
		puts "Deposited RM#{amount}."
		check_balance
	end

	def withdraw(amount)
		@balance -= amount
		puts "Withdrew RM#{amount}."
		check_balance
	end

	def check_balance
		puts "Balance: RM#{@balance}."
	end
end

bankaccount1 = BankAccount.new()
puts bankaccount1.account_number
bankaccount1.check_balance
bankaccount1.deposit(1000)
bankaccount1.withdraw(300)

puts " "

bankaccount2 = BankAccount.new
puts bankaccount2.account_number
bankaccount2.check_balance
bankaccount2.deposit(1000)

puts " "

bankaccount1.transfer(bankaccount2,200)
puts bankaccount1.check_balance
puts bankaccount2.check_balance