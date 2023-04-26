class Apartment < ApplicationRecord
    has_many :leases
    has_many :tenants, through: :leases

    #validations
    validates :number, presence: true
end
