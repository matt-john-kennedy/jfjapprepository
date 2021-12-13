class Customer < ApplicationRecord
    has_many :enquiries
    has_many :bookings
    
    validates :name, :email, :phone_number, :street_number, :street_name, :suburb, presence: true
    # make sure data types are correct, data length is appropriate
    validates :postcode, length: { is: 4 }, presence: true
end