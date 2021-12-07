class Booking < ApplicationRecord
  belongs_to :castle
  belongs_to :customer
  belongs_to :enquiry
end
