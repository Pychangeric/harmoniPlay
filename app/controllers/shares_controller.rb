class SharesController < ApplicationController
  before_action :set_share, only: [:show, :update, :destroy]

  
  def index
    shares = Share.all
    render json: shares
  end


  end

  
  def create
    share = Share.new(share_params)

    if share.save
      render json: share, status: :created
    else
      render json: { errors: share.errors }, status: :unprocessable_entity
    end
  end

  
  def update
    if @share.update(share_params)
      render json: @share
    else
      render json: { errors: @share.errors }, status: :unprocessable_entity
    end
  end


  def destroy
    @share.destroy
    head :no_content
  end

  private

  def set_share
    @share = Share.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    render json: { error: 'Share not found' }, status: :not_found
  end

  def share_params
    params.require(:share).permit(:user_id, :platform, :share_url, :song_id)
  end
end


