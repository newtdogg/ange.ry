class WelcomeController < ApplicationController
  def index
    @restaurants = Restaurant.all
    @username = session[:username]
  end
end
