class RestaurantsController < ApplicationController

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def index
    @restaurants = Restaurant.all()
  end

  def new

  end

  def create
    @restaurant = Restaurant.new(restaurant_params)

    @restaurant.save
    redirect_to "welcome#index"
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy()

    redirect_to restaurants_path
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :location, :desc)
  end
end
