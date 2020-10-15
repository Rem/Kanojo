class GirlfriendsController < ApplicationController

    def index
        @girlfriends = Girlfriend.all
    end

    def show
        @girlfriend = Girlfriend.find_by(id: params[:id])
    end

    def new
    end

    private 

    # def user_params
    #     params.require
end
