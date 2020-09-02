class BookingsController < ApplicationController

  def show
    # @booking = Booking.find(params[:id])
    # @meal = Meal.find(params[:meal_id])
  end

  def new
    continue = true
    i = 1
    @meals = []
    while continue
      if params["meal#{i}"]
        @meals << [Meal.find(params["meal#{i}"]), "mardi"]
        i += 1
      else
        break
      end
    end


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
