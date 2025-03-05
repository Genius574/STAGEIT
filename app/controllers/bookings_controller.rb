class BookingsController < ApplicationController
  def index
    @item = Item.find(params[:item_id])
    @bookings = Booking.where(item: @item)
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
      redirect_to item_bookings_path(@item)
    else
      render :items/show, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  private

  def booking_params
    params.require(:booking).permit(:date)
  end
end
