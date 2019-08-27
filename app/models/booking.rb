class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :superhero

  validates :hero_start_date, presence: true
  validates :hero_end_date, presence: true
end
