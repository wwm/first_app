class UsersController < ApplicationController
  def new
    @user = User.new
    @title = "Sign up"
  end

  def show
    @user = @user = User.find(params[:id])
  end

   def create
    @user = User.new(params[:user])
    if @user.save
      # Handle a successful save.
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      @title = "Sign up"
      render 'new'
    end
  end

end
