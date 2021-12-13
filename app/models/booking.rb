class Booking < ApplicationRecord
  belongs_to :castle
  belongs_to :customer
  belongs_to :enquiry

  validates :start_time, :end_time, :duration, :total, :paid, :terms_agreement, presence: true
end
