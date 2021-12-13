class Castle < ApplicationRecord
    has_many_attached :image
    has_many :enquiries, dependent: :destroy
    has_many :bookings, dependent: :destroy

    validates :name, uniqueness: true, presence: true
    validates :description, presence: true
end
