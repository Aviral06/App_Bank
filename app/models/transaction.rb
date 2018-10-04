class Transaction < ApplicationRecord
 belongs_to :account
 validates :txn_type, presence: true, length: {maximum: 1}, inclusion: { in: %w(W D)}
 validates :amount, presence: true,length: {maximum: 10}
 after_save :change_balance

private
		
def change_balance
	if self.txn_type == "W"
		if self.amount < self.account.balance
			left_balance = self.account.balance - self.amount
			unless self.account.update_attributes(balance: left_balance)
				raise "Transaction Incomplete"
			end	
		end
    end

    if self.txn_type == "D"
			new_balance = self.account.balance + self.amount
			unless self.account.update_attributes(balance: new_balance)
				raise "Transaction Incomplete"
			end	
		end
    


end
end
    