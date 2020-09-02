class BookingsController < ApplicationController

  def show
    # @booking = Booking.find(params[:id])
    # @meal = Meal.find(params[:meal_id])
  end

  def new
    @meal = Meal.find(params[:meal_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @meal = Meal.find(params[:meal_id])
  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :meal_id)
  end

end
