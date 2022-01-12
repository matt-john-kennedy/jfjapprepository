class Booking < ApplicationRecord
  belongs_to :castle
  belongs_to :customer
  belongs_to :enquiry

  validates :duration, :end_time, :start_time, presence: true
  validates_inclusion_of :terms_agreement, in: [true, false]
  validates_inclusion_of :paid, in: [true, false]
end
