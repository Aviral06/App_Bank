class Transaction < ApplicationRecord
 belongs_to :account
 validates :type, presence: true, length: {maximum: 10}
 validates :amount, presence: true,length: {maximum: 10}
end