class ItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: :show

  def index
    @items = Item.all
    if params[:query].present?
      @items = @items.search_by_name_and_category(params[:query])
    end

    if params[:category].present?
      @items = @items.search_by_name_and_category(params[:category])
    end
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
    params.require(:item).permit(:name, :category, :description, :price, :photo)
  end
end
