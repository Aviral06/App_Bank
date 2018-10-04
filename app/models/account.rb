class Account < ApplicationRecord
		belongs_to :user
		has_many :transactions
		validates :balance, presence: true, length: {maximum: 15}, numericality: true
		validates :act_type, presence: true, length: {maximum: 15}
		validates :number, presence: true, length: {maximum: 10}
		validate :balance_is_valid

		private

		def balance_is_valid
			 if self.balance < 0
      errors.add(:balance, "should be positive")
    end
end 

end