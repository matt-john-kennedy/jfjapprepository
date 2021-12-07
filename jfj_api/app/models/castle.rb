class Castle < ApplicationRecord
    has_many_attached :image
    has_many :enquiries
end
