class Card < ApplicationRecord
 belongs_to :user
 validates :card_type, presence: true, length: {maximum: 10}
 validates :number, presence: true,length: {maximum: 10}
end