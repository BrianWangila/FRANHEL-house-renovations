class SessionsController < ApplicationController

  #login
  def create
    user = User.find_by(username: params[:username])
    if user&.authenticate(params[:password])
      user_sessions(user.id, user.user_type)
      render json: user, status: :created
    else
      render json: {"errors": ["Incorrect username or password"]}, status: :unauthorized
    end
  end


  private

  def user_sessions(user_id, user_type)
    session[:user_id] ||= user_id
    session[:user_type] ||= user_type
  end

end
