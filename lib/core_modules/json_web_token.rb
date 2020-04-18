module CoreModules::JsonWebToken
  require 'jwt'

  def self.encode(payload, exp = 24.hours.from_now)
    payload[:exp] = exp.to_i
    JWT.encode(payload, ENV['SECRET_KEY_BASE'])
  end

  def self.decode(token)
    begin
    body = JWT.decode(token, ENV['SECRET_KEY_BASE'] )
      if body then HashWithIndifferentAccess.new body[0] else return false end
    rescue JWT::ExpiredSignature, JWT::VerificationError => e
      return false
    rescue JWT::DecodeError, JWT::VerificationError => e
      return false
    end
  end
end