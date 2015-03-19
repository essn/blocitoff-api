class Api::ItemsController < ApplicationController
  before_action :authenticate_user!

  def index
    user = current_user
    render json: user.items.all
  end

  def show
    user = current_user
    item = user.items.find(params[:id])

    render json: item
  end

  def create
    user = User.find(params[:user_id])
    item = user.items.build(item_params)

    if item.save
      render json: item
    else
      head 500
    end
  end

  def destroy
    item = Item.find(params[:id])

    if item.destroy
      user = current_user
      render json: current_user.items.all
    else
      head 500
    end
  end

  def user
    render json: current_user
  end

  private

  def item_params
    { name: params[:name] }
  end
end
