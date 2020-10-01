class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.create(restaurant_params)
  end
  private
  def restaurant_params
    params.require.permit(:name, :address, :phone_number, :category)
  end
end
