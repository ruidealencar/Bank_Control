class Account < ApplicationRecord
  belongs_to :agency

  has_many :release, through: :agency

  validates :agency, :account_number, :balance, presence: true
  validates :balance, numericality: true
  
end
