class AddHeroEndDateToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :hero_end_date, :string
  end
end
