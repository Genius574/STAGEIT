class ItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: :show

  def index
    @items = Item.all
  end

  def show
    @booking = Booking.new
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.user = current_user
    if @item.save
      redirect_to items_path(@item)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def item_params
    params.require(:item).permit(:name, :category, :description, :price)
  end
end
