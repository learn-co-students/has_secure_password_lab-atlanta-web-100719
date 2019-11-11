class UsersController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:new, :create]

  def new
  end

  def show
    @user = User.find_by(id: session[:user_id])
  end

  def create
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      session[:user_id] = @user.id
      redirect_to users_path
    else
      redirect_to users_new_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end

  def require_login
    redirect_to users_new_path unless session.include? :user_id
  end
end
