class BookingsController < ApplicationController

   def show
    @booking = Booking.find(params[:id])
    @meal = Meal.find(params[:meal_id])
  end

  def new
    @meal = Meal.find(params[:meal_id])
    @booking = Booking.new
  end
end
