class SharesController < ApplicationController
  def index 
    shares = Share.all
    render json: shares
  end

  def show 
    share = Share.find_by(title: params[:title])
    if share
      render json: share
    else 
      render json: { error: "Share not found" }
    end
  end

  def create 
    share = Share.create(share_params)

    if share.persisted?
      render json: share, status: :created
    else
      render json: { error: share.errors.full_messages.join(", ") }, status: :unprocessable_entity
    end
  end

  private

  def share_params
    params.require(:share).permit(:user_id, :platform, :share_url)
  end
end


