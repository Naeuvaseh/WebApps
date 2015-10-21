class Category < ActiveRecord::Base
  belongs_to :account

  validates :Category, presence: true
  validates :Type, presence: true
  validates :Description, presence: true
end
