class ApplicationController < ActionController::API

  def encode_token(payload)
    JWT.encode payload, secret, 'HS256'
  end

  def user_payload(user)
    { user_id: user.id }
  end

  def secret
    "oogway"
    # Rails.application.credentials.handy_secret
      # ENV['handy_app_secret']
  end

  def token
    request.headers["Authorization"]
  end

  def decoded_token
    JWT.decode token, secret, true, { algorithm: 'HS256'}
  end

  def current_user
    # {abc:"dssad"}
    user_id = decoded_token[0]["user_id"]
    User.find(user_id)
  end

  def logged_in?
    !!current_user
  end

  def authorized
    render json: { message: "You are not login, please log in" }, status: :unauthorized unless logged_in?
  end

end
