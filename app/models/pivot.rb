class Pivot < ApplicationRecord
  has_many :messages
  belongs_to :user
  scope :with_juice, -> {'hello'}
end
