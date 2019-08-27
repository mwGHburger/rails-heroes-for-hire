class BookingsController < ApplicationController
  def new
    @superhero = Superhero.find(params[:superhero_id])
    @booking = Booking.new
  end

  def create
    @superhero = Superhero.find(params[:superhero_id])
    @booking = Booking.new(booking_params)
    @booking.superhero = @superhero
    @booking.user = current_user
    if @booking.save
      redirect_to superheroes_path
    else
      render :new
    end
  end

  private

  def booking_params
    # Need to redefine this
    params.require(:booking).permit(:hero_start_date, :hero_end_date)
  end
end
