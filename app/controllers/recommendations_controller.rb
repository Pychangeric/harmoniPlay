class RecommendationsController < ApplicationController
    def recommend
      user = User.find(params[:user_id])
  
      if user.present?
        render json: { recommendations: recommended_songs }, status: :ok
      else
        render json: { error: "User must be logged in to get recommendations." }, status: :unauthorized
      end
    end
  end