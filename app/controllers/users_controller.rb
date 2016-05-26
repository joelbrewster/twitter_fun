class UsersController < ApplicationController
  def new
    # show the new user form to register
  end

  def create
    # post so it saves a new user to DB
    user = User.new(user_params)

    if user.save
      session[:user_id] = user.id
      redirect_to '/'
    else
      redirect_to '/signup'
    end

  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end
