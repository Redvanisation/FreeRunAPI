class UsersController < ApplicationController
  before_action except: [:create] do 
    authenticate_cookie
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user, status: :created
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  private

    def user_params
      params.permit(:username, :email, :password, :address)
    end

end
