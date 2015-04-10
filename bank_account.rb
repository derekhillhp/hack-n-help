class BankAccount
	attr_reader :name

	def initialize(name)
		@name = name
		@transactions = []
		add_transaction("Beginning Balance", 0)
	end

	def credit(description, amount)
		add_transaction(description, amount)
	end

	def debit(description, amount)
		add_transaction(description, -amount)
	end

	def add_transaction(description, amount)
		@transactions.push(description: description, amount: amount)
	end

	def balance
		balance = 0
		@transactions.each do |transaction|
			balance += transaction[:amount]
		end
		balance
	end

	def to_s
		"Name: #{name}, Balance: #{sprintf("%0.2f", balance)}"
	end

	def print_register
		puts "#{name}'s Bank Account"

		puts "Description".ljust(30) + "Amount".ljust(40)
		@transactions.each do |trans|
			puts trans[:description].ljust(30) + "\t" + 
			sprintf("%0.2f", trans[:amount]).ljust(40)
		end
		puts "Balance:".ljust(30) + sprintf("%0.2f", balance).ljust(40)
	end



end

bank_account = BankAccount.new("Jason")
bank_account.credit("Paycheck",100)
bank_account.debit("Groceries",40)
bank_account.print_register