class UsersController < ApplicationController

    def show
        @user = User.find(params[:id])
    end

    def new
        @user = User.new
    end

    def create
        @user = User.create(users_params)
        # binding.pry
        redirect_to user_path(@user)
    end

    def edit
    end

    def update
    end 


    private
    def users_params
        params.require(:user).permit(:username, :password)
    end

end
