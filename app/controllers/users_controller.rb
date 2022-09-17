class UsersController < ApplicationController
    skip_before_action :verify_authenticity_token
    def index
        @users = User.all 
        render json: @users
    end 

    def show
        @user = User.find(params[:id])
        render json: @user
    end 

    def create
        user = User.create(
            name: params[:name],
            password: params[:password]
        )
        render json: @user
    end 

    def update
        @user = User.find(params[:id])
        @user.update(
            name: params[:name],
            password: params[:password]
        )
        render json: @user
    end 

    def destroy
        @users = User.all 
        @user = User.find(params[:id])
        @user.destroy
        render json: @user
    end 

end
