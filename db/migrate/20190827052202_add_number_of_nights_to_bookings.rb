class AddNumberOfNightsToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :number_of_nights, :integer
  end
end
