class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @superheroes = Superhero.all
  end

  def kitchensink
  end

  def kitchensinkgael
  end
end
