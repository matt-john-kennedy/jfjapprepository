class Enquiry < ApplicationRecord
  belongs_to :castle
  belongs_to :customer
end
