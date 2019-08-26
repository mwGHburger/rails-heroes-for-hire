class Superhero < ApplicationRecord
  belongs_to :user

  validates :name, presence: true, uniqueness: true
  validates :price, presence: true
  validates :description, presence: true
  validates :location, presence: true
end
