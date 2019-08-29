class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :superhero

  validates :hero_start_date, presence: true
  validates :hero_end_date, presence: true

  def date_range
    [hero_start_date, hero_start_date]
  end

  def date_range=(date_string)
    dates = date_string.split(' to ')
    self.hero_start_date = Date.parse(dates[0])
    self.hero_end_date = Date.parse(dates[1])
  end

  def days_of_rent
    (Date.parse(hero_end_date) - Date.parse(hero_start_date) + 1).to_i
  end

  def calculate_price!
    self.total_price = days_of_rent * superhero.price
  end
end
