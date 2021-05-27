class BookingsController < ApplicationController
  before_action :set_booking, only: [:destroy, :show]
  before_action :set_island, only: [:new, :create]

  # def new
  #   @booking = Booking.new
  # end

  def show
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.island = @island
    @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking)
      #redirect to dashboard page
    else
      render "islands/show"
    end
  end

  def destroy
    @booking.destroy
    redirect_to island_path(@booking.island)
  end

  private

  def booking_params
    params.require(:booking).permit(:description, :start_time, :end_time, :user_id, :island_id)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_island
    @island = Island.find(params[:island_id])
  end
end
