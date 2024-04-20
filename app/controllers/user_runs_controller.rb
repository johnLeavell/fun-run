class UserRunsController < ApplicationController
  before_action :set_user_run, only: %i[ show edit update destroy ]

  # GET /user_runs or /user_runs.json
  def index
    @user_runs = UserRun.all
  end

  # GET /user_runs/1 or /user_runs/1.json
  def show
  end

  # GET /user_runs/new
  def new
    @user_run = UserRun.new
  end

  # GET /user_runs/1/edit
  def edit
  end

  # POST /user_runs or /user_runs.json
  def create
    @user_run = UserRun.new(user_run_params)

    respond_to do |format|
      if @user_run.save
        format.html { redirect_to user_run_url(@user_run), notice: "User run was successfully created." }
        format.json { render :show, status: :created, location: @user_run }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user_run.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_runs/1 or /user_runs/1.json
  def update
    respond_to do |format|
      if @user_run.update(user_run_params)
        format.html { redirect_to user_run_url(@user_run), notice: "User run was successfully updated." }
        format.json { render :show, status: :ok, location: @user_run }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user_run.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_runs/1 or /user_runs/1.json
  def destroy
    @user_run.destroy

    respond_to do |format|
      format.html { redirect_to user_runs_url, notice: "User run was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_run
      @user_run = UserRun.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_run_params
      params.require(:user_run).permit(:user_id, :run_id)
    end
end
