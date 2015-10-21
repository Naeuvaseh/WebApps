class Account < ActiveRecord::Base
  has_many :transactions, dependent: :destroy
  has_one :category
  belongs_to :user
  validates :Name, presence: true
end
