class Account < ApplicationRecord
  belongs_to :agency
  validates :agency, :account_number, :balance, presence: true
end
