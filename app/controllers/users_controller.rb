class UsersController < ApplicationController
  skip_before_action :authenticate_request, only: [:login, :register]

  def register
    @user = User.create(user_params)
    if @user.save
     response = { message: 'User created successfully'}
     render json: response, status: :created 
    else
     render json: @user.errors, status: :bad
    end
  end

  def login
    authenticate params[:email], params[:password]
  end

  def authenticate(email, password)
    command = AuthenticateUser.call(email, password)


    if command.success?
      render json: {
        current_user: email,
        message: 'Login successful',
        access_token: command.result
      }
    else
      render json: { error: command.errors }, status: :unauthorized
    end
  end

  private

    def user_params
      params.permit(:username, :email, :password, :address)
    end

end
