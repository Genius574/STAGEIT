class BookingsController < ApplicationController
  before_action :set_booking, only: [:approve, :decline]
  
  def index
    @bookings = Booking.where(user: current_user)
    @i_book = current_user.bookings
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @item = Item.find(params[:item_id])
    @booking = Booking.new(booking_params)
    @booking.item_id = @item.id
    @booking.user = current_user
    if @booking.save
      redirect_to bookings_path
    else
      render :items/show, status: :unprocessable_entity
    end
  end

  def approve
    @booking.approved!
    redirect_to bookings_path, notice: "Booking has been approved."
  end

  def decline
    @booking.declined!
    redirect_to bookings_path, notice: "Booking has been declined."
  end

  private

  def booking_params
    params.require(:booking).permit(:date)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
