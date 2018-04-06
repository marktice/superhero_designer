class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end
  
  def new
    @item = Item.new
    @item_types = ItemType.all
  end
  
  def create
    @item = Item.new(params.require(:item).permit(:label, :description, :price, :item_type_id))    
    @item.save
    redirect_to items_path
  end

end