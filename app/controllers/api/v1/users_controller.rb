class Api::V1::UsersController < ApplicationController

    def index
      render json: UserSerializer.new(User.all)
    end
  
    def show
      render json: UserSerializer.new(User.find(params[:id]))
    end

    def destroy
      user = User.find(params["id"])
      if user.destroy
        render status: 204,
        json: {
          status: "success",
        }
      end
    end
  
  end