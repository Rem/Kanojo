class SessionController < ApplicationController
  def welcome
  end

  def destroy
    session.delete(:user_id)
    redirect_to '/'
  end

  def new
  end

  def create
    @user = User.find_by(phone_number: params[:user][:phone_number])

    if @user.try(:authenticate, params[:user][:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      flash[:error] = "Sorry, incorrect credientials"
      redirect_to login_path
    end 
  end

end
