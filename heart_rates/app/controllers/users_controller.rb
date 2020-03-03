class UsersController < ApplicationController
    def index
        @users =User.all 
        render json: @users, include: :heartrates
    end

    def show 
        @user = User.find(params[:id])
        render json: @user, include: :heartrates   
    end

    def create 
        @user = User.create(username: params[:username])
        render json: @user
    end

end
