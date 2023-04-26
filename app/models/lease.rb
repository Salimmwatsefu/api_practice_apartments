class Lease < ApplicationRecord
  belongs_to :apartment
  belongs_to :tenant

  #validations
  validates :rent, presence :true, numericality: { greater_than_or_equal_to: 0}

end
