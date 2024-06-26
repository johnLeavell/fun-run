class WaiversController < ApplicationController
  before_action :set_waiver, only: %i[ show edit update destroy ]

  # GET /waivers or /waivers.json
  def index
    @waivers = Waiver.all
  end

  # GET /waivers/1 or /waivers/1.json
  def show
  end

  # GET /waivers/new
  def new
    @waiver = Waiver.new
  end

  # GET /waivers/1/edit
  def edit
  end

  # POST /waivers or /waivers.json
  def create
    @waiver = Waiver.new(waiver_params)

    respond_to do |format|
      if @waiver.save
        format.html { redirect_to waiver_url(@waiver), notice: "Waiver was successfully created." }
        format.json { render :show, status: :created, location: @waiver }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @waiver.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /waivers/1 or /waivers/1.json
  def update
    respond_to do |format|
      if @waiver.update(waiver_params)
        format.html { redirect_to waiver_url(@waiver), notice: "Waiver was successfully updated." }
        format.json { render :show, status: :ok, location: @waiver }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @waiver.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /waivers/1 or /waivers/1.json
  def destroy
    @waiver.destroy

    respond_to do |format|
      format.html { redirect_to waivers_url, notice: "Waiver was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_waiver
      @waiver = Waiver.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def waiver_params
      params.require(:waiver).permit(:user_id, :run_id, :name)
    end
end
