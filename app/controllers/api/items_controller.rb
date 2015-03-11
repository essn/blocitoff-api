class Api::ItemsController < ApplicationController
  

  def index
    render json: Item.all
  end

  def show
    @user = current_user
    @item = @user.items.find(params[:id])

    render json: @item
  end

  def create
    @user = User.find(params[:user_id])
    @item = @user.items.new(item_params)

    if @item.save
      head 200
    else
      head 500
    end
  end

  private

  def item_params
    { name: params[:name] }
  end
end
