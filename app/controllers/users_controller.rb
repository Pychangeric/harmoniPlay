class UsersController < ApplicationController
    before_action :authorize, only: [:show]
  
    def create
      user = User.create(user_params)
      if user.valid?
        user.generate_authentication_token! 
        render json: user, status: :created
      else
        render json: { error: user.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    def show
      user = User.find_by(authentication_token: request.headers['Authorization']) 
      if user
        render json: user
      else
        render json: { error: "Invalid authentication token" }, status: :unauthorized
      end
    end
  
    private
  
    def user_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation)
    end
  
    def authorize
      return render json: { error: "Unauthorized" }, status: :unauthorized unless request.headers['Authorization']
    end
  end
  