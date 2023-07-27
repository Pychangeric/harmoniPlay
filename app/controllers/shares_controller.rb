class SharesController < ApplicationController
  before_action :set_share, only: [:show, :edit, :update, :destroy]

  # GET /shares or /shares.json
  def index
    @shares = Share.all
    render json: @shares
  end

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
    end
  end

  # PATCH/PUT /shares/1 or /shares/1.json
  def update
    if @share.update(share_params)
      redirect_to share_path(@share), notice: "Share was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /shares/1 or /shares/1.json
  def destroy
    @share.destroy
    redirect_to shares_path, notice: "Share was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_share
      @share = Share.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def share_params
      params.require(:share).permit(:user_id, :platform, :share_url)
    end
end
