class Api::V1::ItemsController < Api::Controller
  respond_to :json
  before_action :is_admin?, only: [:show, :create]

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

  def show
    respond_with Item.find(params[:id])
  end

  private

  def item_params
    params.require(:item).permit(:name, :description)
  end
end
