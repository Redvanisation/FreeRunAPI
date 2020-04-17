class UsersController < ApplicationController
  skip_before_action :authenticate_user, only: [:login, :register]

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
    user = User.find_by_email(params[:email])
    command = AuthenticateUser.call(params[:email], params[:password])
    if user && command.success?
      created_jwt = command.result
      cookies.signed[:jwt] = {
        value:  created_jwt,
        httponly: true
        }
      render json: { username: user.username, email: user.email, admin: user.admin }
    else
      render json: {
        error: 'Username or password incorrect'
      }, status: 404
    end
  end

  def logout
    cookies.delete(:jwt)
    render json: { message: 'logout successful!' }
  end

  private

    def user_params
      params.permit(:username, :email, :password, :address)
    end

end
