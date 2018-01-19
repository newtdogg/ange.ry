class RatingsController < ApplicationController
  def index
    @ratings = Rating.where(restaurant_id: params[:restaurant_id])
  end

  def show
    @rating = Rating.find(params[:id])
  end

  def new
    if !current_user()
      flash.keep[:errors] = "You must login to review a restaurant"
      redirect_to restaurant_ratings_path()
    end
  end

  def create
    restaurant = Restaurant.find(params[:restaurant_id])
    if restaurant.prevent_multiple_ratings(current_user.id)
      flash.keep[:danger] = "You have already rated this restaurant"
      redirect_to restaurant_path(restaurant.id)
    else
      @rating = Rating.new(rating_params.merge(restaurant_id: params[:restaurant_id], user_id: current_user().id))
      if @rating.save
        redirect_to restaurant_ratings_path()
      else
        render 'new'
      end
    end
  end

  def destroy
    @rating = Rating.find(params[:id])
    @rating.destroy()

    redirect_to restaurant_ratings_path(params[:restaurant_id])
  end

  def edit
    @rating = Rating.find(params[:id])
    if @rating.did_user_make_rating(current_user.id)
    else
      redirect_to restaurant_path(@rating.restaurant_id)
    end
  end

  def update
    @rating = Rating.find(params[:id])
    if @rating.update(rating_params)
      redirect_to restaurant_ratings_path(@rating.restaurant_id)
    else
      render 'edit'
    end
  end

  private

  def rating_params
    params.require(:rating).permit(:stars, :review)
  end

  def restaurant
    Restaurant.find(params[:restaurant_id])
  end


end
