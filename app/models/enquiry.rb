class Enquiry < ApplicationRecord
  belongs_to :castle
  belongs_to :customer
  has_many :bookings

  validates :duration, :end_time, :start_time, presence: true
  validates_inclusion_of :terms_agreement, in: [true, false]
end