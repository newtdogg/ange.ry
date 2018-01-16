class RatingsController < ApplicationController

  def show
    @rating = Rating.find(params[:id])
  end

  def new
  end

  def create
    @rating = Rating.new(rating_params)
    if @rating.save
      redirect_to @rating
    else
      render 'new'
    end
  end

  private

  def rating_params
    params.require(:rating).permit(:stars, :review, :restaurant_id)
  end

end
