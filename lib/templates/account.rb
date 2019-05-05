class Account < ApplicationRecord
  acts_as_paranoid
  has_many :users, dependent: :destroy
  accepts_nested_attributes_for :users
end
