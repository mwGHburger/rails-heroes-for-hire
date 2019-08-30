class ReviewsController < ApplicationController
  def create
      @superhero = Superhero.find(params[:restaurant_id])
      @review = Review.new(review_params)
      @review.superhero = @restaurant
      if @review.save
        redirect_to superhero_path(@superhero)
      else
        render 'superheroes/show'
      end
    end

    private

    def review_params
      params.require(:review).permit(:content)
    end
end
