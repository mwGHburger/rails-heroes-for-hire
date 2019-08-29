class Superhero < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  has_many :bookings, dependent: :destroy
  belongs_to :user

  validates :name, presence: true, uniqueness: true
  validates :price, presence: true
  validates :description, presence: true
  validates :location, presence: true
  validates :photo, presence: true
end
