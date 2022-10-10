class UsersController < ApplicationController
  skip_before_action :authorize, only: :create

  def create
    user = User.create(user_params)
    if user.valid?
      user_sessions(user.id, user.user_type)
      render json: user, status: :created
    else
      render json: {errors: ["validation errors"]}
    end
  end

  def show
    user = User.find_by(id: session[:user_id])
    render json: user
  end


  private

  def user_sessions(user_id, user_type)
    session[:user_id] ||= user_id
    session[:user_type] ||= user_type
  end

  def user_params
    params.permit(:name, :username, :email, :phone_number, :password, :password_confirmation, :location, :profile_pic, :user_type)
  end
end
