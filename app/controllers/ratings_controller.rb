class RatingsController < ApplicationController
  def index
    @ratings = Rating.where(restaurant_id: params[:restaurant_id])
  end

  def show
    @rating = Rating.find(params[:id])
  end

  def new

  end

  def create
    @rating = Rating.new(rating_params.merge(restaurant_id: params[:restaurant_id]))
    if @rating.save
      redirect_to restaurant_ratings_path
    else
      render 'new'
    end
  end

  def destroy
    @rating = Rating.find(params[:id])
    @rating.destroy()

    redirect_to restaurant_ratings_path
  end
  private

  def rating_params
    params.require(:rating).permit(:stars, :review)
  end

  def restaurant
    Restaurant.find(params[:restaurant_id])
  end
end
