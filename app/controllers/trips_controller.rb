class TripsController < ApplicationController

  def show
    @trip = Trip.find(params[:id])
  end

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(trip_params)
    @trip.user = current_user
    if @trip.save
      redirect_to "https://m.uber.com/?client_id=#{@trip.user.id}&action=setPickup&pickup[latitude]=#{@trip.user.latitude}&pickup[longitude]=#{@trip.user.longitude}&pickup[nickname]=#{@trip.user.address}&pickup[formatted_address]=#{@trip.user.address}&dropoff[latitude]=#{@trip.latitude}&dropoff[longitude]=#{@trip.longitude}&dropoff[nickname]=#{@trip.arrival_address}&dropoff[formatted_address]=#{@trip.arrival_address}&product_id=a1111c8c-c720-46c3-8534-2fcdd730040d"
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
    params.require(:trip).permit(:arrival_address, :start_at, :timeslot, :longitude, :latitude)
  end

end
