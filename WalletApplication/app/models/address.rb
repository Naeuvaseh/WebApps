class Address < ActiveRecord::Base
  belongs_to :user
  validates :AddressLine1, presence: true
  validates :City, presence: true
  validates :State, presence: true
  validates :ZIP, presence: true
end
