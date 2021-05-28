class DashboardController < ApplicationController
  def index
    @bookings = Booking.where(user_id: current_user)
    raise
  end
end
