class SessionsController < ApplicationController
    def create
      user = User.find_by(email: params[:email])
  
      if user && user.authenticate(params[:password])
        user.generate_authentication_token! 
        render json: user, status: :ok
      else
        render json: { error: "Invalid username or password" }, status: :unauthorized
      end
    end
  
    def destroy
      user = User.find_by(authentication_token: request.headers['Authorization'])
      if user
        user.reset_authentication_token!
      end
      head :no_content
    end
    def show
     if user = User.find(params[:id])
     render json: user
     else
      render json:{error: "User not found"},status: :unprocessable_entity 
    end
  end
  end