class BookingsController < ApplicationController
  def index
    @bookings = Booking.where(user: current_user)
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
  private
  def booking_params
    params.require(:booking).permit(:date)
  end
end

