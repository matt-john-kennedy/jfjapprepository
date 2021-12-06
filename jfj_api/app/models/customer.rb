class Customer < ApplicationRecord
    has_many :bookings
    has_many :enquiries
    validates :name, presence: true
    validates :email, presence: true
    validates :phone_number, presence: true
    validates :street_number, presence: true
    validates :street_name, presence: true
    validates :suburb, presence: true
    validates :postcode, presence: true
end
