class Release < ApplicationRecord
  belongs_to :account

  validates :account, :release_type, :value, presence: true
  validates :value, numericality: true
end
