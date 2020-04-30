class WishlistController < ApplicationController
  before_action :logged_in_user

  def index
    render json: @current_user.wished_products if @current_user
  end

  def create
    # debugger
    @wished_product = Product.find(params[:wished_product_id])
    @current_user.wished_products << @wished_product
    if @current_user.wished_products
      render json: @current_user.wished_products, status: :created
    else
      render json: :error, status: :unprocessable_entity
    end
  end

  def destroy
    @current_user.wished_products.delete(params[:wished_product_id])
  end

  private

  def logged_in_user
    # debugger
    return @current_user = User.find(params[:user_id])
  end

  def wishlist_params
    # debugger
    params.permit(:user_id, :wished_product_id)
  end
end
