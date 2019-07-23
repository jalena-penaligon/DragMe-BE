class Api::V1::UsersController < ApplicationController

    def index
      render json: UserSerializer.new(User.all)
    end
  
    def show
      render json: UserSerializer.new(User.find(params[:id]))
    end

    def create 
        user = User.new(user_params)
        if user.save
            render status: 201,
            json: {user: user}
        end
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

    private

  def user_params
    params.require(:user).permit(:password, :password_confirmation, :email)
  end

  end