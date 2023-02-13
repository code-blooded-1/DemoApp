class PanDetailsController < ApplicationController
  before_action :set_pan_detail, only: %i[ show edit update destroy ]

  # GET /pan_details or /pan_details.json
  def index
    @pan_details = PanDetail.all
  end

  # GET /pan_details/1 or /pan_details/1.json
  def show
  end

  # GET /pan_details/new
  def new
    @pan_detail = PanDetail.new
  end

  # GET /pan_details/1/edit
  def edit
  end

  # POST /pan_details or /pan_details.json
  def create
    @pan_detail = PanDetail.new(pan_detail_params.merge!({user_id: User.first.id}))

    respond_to do |format|
      if @pan_detail.save
        format.html { redirect_to pan_detail_url(@pan_detail), notice: "Pan detail was successfully created." }
        format.json { render :show, status: :created, location: @pan_detail }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pan_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pan_details/1 or /pan_details/1.json
  def update
    respond_to do |format|
      if @pan_detail.update(pan_detail_params)
        format.html { redirect_to pan_detail_url(@pan_detail), notice: "Pan detail was successfully updated." }
        format.json { render :show, status: :ok, location: @pan_detail }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pan_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pan_details/1 or /pan_details/1.json
  def destroy
    @pan_detail.destroy

    respond_to do |format|
      format.html { redirect_to pan_details_url, notice: "Pan detail was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pan_detail
      @pan_detail = PanDetail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pan_detail_params
      params.require(:pan_detail).permit(:number)
    end
end
