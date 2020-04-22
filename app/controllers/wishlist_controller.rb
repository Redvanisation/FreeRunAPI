class WishlistController < ApplicationController
  before_action :logged_in_user

  def index
    render json: @current_user.fav_products if @current_user
  end

  def create
    if @current_user.fav_products << params[:product]
      render json: @current_user.fav_products, status: :created
    else
      render json: :error, status: :unprocessable_entity
    end
  end

  def destroy
    @product = @current_user.fav_products.find(params[:id])
    @current_user.fav_products[@product.id].destroy
  end

  private

  def logged_in_user
    # debugger
    return @current_user = User.find(params[:user_id])
  end

  def wishlist_params
    params.permit(:id, product: [])
  end
end
