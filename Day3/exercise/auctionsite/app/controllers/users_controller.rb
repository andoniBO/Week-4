class UsersController < ApplicationController
  def index
    @users = User.all.order("lower(name) ASC")
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(
      name: params[:user][:name],
      email: params[:user][:email]
    )
    @user.save
    redirect_to "/users/"
  end

  def destroy
    User.destroy(params[:id])
    redirect_to "/users/"
  end
end
