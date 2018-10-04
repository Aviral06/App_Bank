class Account < ApplicatonRecord
		belongs_to :user
		has_many :transactions
		validates :balance, presence: true, length: {maximum: 15}, numericality: true
		validates :type, presence: true, length: {maximum: 15}
		validates :number, presence: true, length: {maximum: 10}
end