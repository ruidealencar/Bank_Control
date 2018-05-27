class Agency < ApplicationRecord
    validates :agency_number, :address, presence: true
end

