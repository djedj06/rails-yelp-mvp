class RestaurantsController < ApplicationController

  before_action :find_restaurant, only: [:show, :edit, :update, :destroy]


  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurants_path(@restaurant)
    else
      render new_restaurant_path(@restaurant)
    end
  end

  def edit
  end

  def update
    if @restaurant.update(restaurant_params)
      redirect_to restaurants_path(@restaurant)
    else
      render edit_restaurant_path(@restaurant)
    end
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurants_path(@restaurant)
  end


private

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
  params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

end