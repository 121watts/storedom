class Api::V1::ItemsController < ApplicationController
  respond_to :json

  def index
    respond_with Item.all
  end

  def create
    item = Item.new(item_params)

    if item.save
      respond_with item, location: items_path(item)
    else
      puts "Fuck you"
    end
  end

  private

  def item_params
    params.require(:item).permit(:name, :description)
  end
end
