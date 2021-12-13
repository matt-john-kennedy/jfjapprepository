class Enquiry < ApplicationRecord
  belongs_to :castle
  belongs_to :customer
  has_many :bookings

  validates :terms_agreement, :duration, :end_time, :start_time, :paid, presence: true

  # do I have to put this when a relationship is outlined above? 
  # validates :castle_id, presence: true
  # validates :customer_id, presnece: true
end