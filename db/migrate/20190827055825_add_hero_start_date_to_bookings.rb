class AddHeroStartDateToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :hero_start_date, :string
  end
end
