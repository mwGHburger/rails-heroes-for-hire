class SuperheroesController < ApplicationController
  def index
    if params[:query].present?
      @superheroes = Superhero.where("name ILIKE ?", "%#{params[:query]}%")
    else
      @superheroes = Superhero.all
    end
  end

  def show
    @superhero = Superhero.find(params[:id])
  end

  def new
    @superhero = Superhero.new
  end

  def create
    @superhero = Superhero.new(superhero_params)
    @superhero.user = current_user
    if @superhero.save
      redirect_to superhero_path(@superhero)
    else
      render :new
    end
  end

  private

  def superhero_params
    params.require(:superhero).permit(:name, :price, :description, :location, :photo)
  end
end
