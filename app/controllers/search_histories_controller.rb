class SearchHistoriesController < ApplicationController
    def search
      user = User.find(params[:user_id])
      query = params[:query]
  
      if query.present? && query.length >= 3
        search_history = user.search_histories.create(query: query)
        render json: { result: "Search history saved successfully!" }, status: :ok
      else
        render json: { error: "Search query must be at least 3 characters long." }, status: :unprocessable_entity
      end
    end
  end