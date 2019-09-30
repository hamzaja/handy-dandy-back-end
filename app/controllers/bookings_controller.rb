class BookingsController < ApplicationController

  def index
    render json: Booking.all
  end

  def create
    @booking = Booking.create(booking_params)
    render json: @booking
  end

  private

  def booking_params
      params.permit(:this_user_id, :other_user_id, :time, :date)
  end

end
