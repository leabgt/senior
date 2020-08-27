class TripsController < ApplicationController
  def show
  end

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(trip_params)
    if @trip.save!
      redirect_to edit_trip(@trip)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  private

  def trip_params
    params.require(:trip).permit(:arrival_address, :start_at, :timeslot)
  end
end
