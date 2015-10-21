class Transaction < ActiveRecord::Base
  belongs_to :account
  has_one :category
  validates :Date, presence: true
  validates :Amount, presence: true
end
