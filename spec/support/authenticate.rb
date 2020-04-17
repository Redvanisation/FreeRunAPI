module Authenticate

  def login_valid(params, user)

    post '/auth/register', params: params
    post '/auth/login', params: user
  end

end