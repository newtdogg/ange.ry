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
    @restaurant = Restaurant.new(restaurant_params.merge(user_id: current_user().id))
    if @restaurant.save
      redirect_to "/"
    else
      render 'new'
    end
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy()

    redirect_to restaurants_path
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
    if @restaurant.did_i_make_this?(current_user.id)
    else
      redirect_to restaurant_path(@restaurant.id)
    end
  end


  def update
    @restaurant = Restaurant.find(params[:id])

      if @restaurant.update(restaurant_params)
        redirect_to "/"
      else
        render 'edit'
      end
  end


  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :location, :desc, :img)
  end
end
