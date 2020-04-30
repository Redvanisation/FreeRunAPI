class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :update, :destroy]
  before_action :logged_in_user

  # GET /orders
  def index
    # debugger
    @orders = @current_user.orders

    render json: @orders
  end

  # GET /orders/1
  def show
    render json: { order: @order, products: @order.products }
  end

  # POST /orders
  def create


    @order = Order.new(order_params)

    if @order.save
      # debugger
      render json: @order, status: :created, location: @order
    else
      render json: @order.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /orders/1
  def update
    if @order.update(order_params)
      render json: @order
    else
      render json: @order.errors, status: :unprocessable_entity
    end
  end

  # DELETE /orders/1
  def destroy
    @order.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def order_params
      params.permit(:user_id, :total, :paid, :delivered, product_ids: [])
    end

    def logged_in_user
      # debugger
      return @current_user = User.find(params[:user_id])
    end
end
