class ItemsController < ApplicationController
  def index
    @items = Item.all
  end
  
  def new
    @item = Item.new
  end
  
  def create
    @item = Item.new(params.include(:label, :description, :item_type, :price))

    if @item.save
      redirect_to show_items_path(@item)
    else
      # respond with 500 error
    end

  end

end