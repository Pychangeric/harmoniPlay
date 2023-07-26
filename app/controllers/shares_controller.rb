class SharesController < ApplicationController
  before_action :set_share, only: %i[ show edit update destroy ]

  # GET /shares or /shares.json
  def index
    @shares = Share.all
  end

  # GET /shares/1 or /shares/1.json
  def show
  end

  # GET /shares/new
  def new
    @share = Share.new
  end

  # GET /shares/1/edit
  def edit
  end

  # POST /shares or /shares.json
  def create
    @share = Share.new(share_params)

    respond_to do |format|
      if @share.save
        format.html { redirect_to share_url(@share), notice: "Share was successfully created." }
        format.json { render :show, status: :created, location: @share }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @share.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shares/1 or /shares/1.json
  def update
    respond_to do |format|
      if @share.update(share_params)
        format.html { redirect_to share_url(@share), notice: "Share was successfully updated." }
        format.json { render :show, status: :ok, location: @share }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @share.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shares/1 or /shares/1.json
  def destroy
    @share.destroy

    respond_to do |format|
      format.html { redirect_to shares_url, notice: "Share was successfully destroyed." }
      format.json { head :no_content }
    end
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
