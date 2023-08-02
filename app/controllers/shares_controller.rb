class SharesController < ApplicationController
  def index 
    shares = Share.all
    render json: shares
  end

<<<<<<< HEAD
  # GET /shares/1 or /shares/1.json
  def show 
    # No additional code required for this action
  end

  # GET /shares/new
  def new
    @share = Share.new
  end

  # GET /shares/1/edit
  def edit
    # No additional code required for this action
  end

  # POST /shares or /shares.json
  def create
    @share = Share.new(share_params)

    if @share.save
      redirect_to share_path(@share), notice: "Share was successfully created."
    else
      render :new, status: :unprocessable_entity
=======
  def show 
    share = Share.find_by(title: params[:title])
    if share
      render json: share
    else 
      render json: { error: "Share not found" }
>>>>>>> 7f64e394433d9a0d0290aa64175f522809e08f3a
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


