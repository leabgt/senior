class BookingsController < ApplicationController

  def show
    # @booking = Booking.find(params[:id])
    # @meal = Meal.find(params[:meal_id])
  end

  def new
    continue = true
    i = 1
    @breakfasts = []
    @lunches = []
    @diners = []
    while continue
      if params["meal#{i}"]
        @breakfasts << Meal.find_by(id: params["meal#{i}"], category: "breakfast") if !Meal.find_by(id: params["meal#{i}"], category: "breakfast").nil?
        @lunches << Meal.find_by(id: params["meal#{i}"], category: "lunch") if !Meal.find_by(id: params["meal#{i}"], category: "lunch").nil?
        @diners << Meal.find_by(id: params["meal#{i}"], category: "diner") if !Meal.find_by(id: params["meal#{i}"], category: "diner").nil?
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
