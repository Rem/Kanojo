class UsersController < ApplicationController
    def show
        @user = User.find_by_id(params[:id])
        redirect_to '/' if !@user
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            render :new
        end
    end

    def new
        @user = User.new
    end

    private

    def user_params
        params.require(:user).permit(:name,:password,:phone_number)
    end
end
