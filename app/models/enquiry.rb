class Enquiry < ApplicationRecord
  belongs_to :castle
  belongs_to :customer
  has_many :bookings

  validates :terms_agreement, :duration, :end_time, :start_time, :paid, presence: true
end