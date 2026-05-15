class JobofferhastagsController < ApplicationController
  before_action :set_jobofferhastag, only: %i[ show edit update destroy ]

  # GET /jobofferhastags or /jobofferhastags.json
  def index
    @jobofferhastags = Jobofferhastag.all
  end

  # GET /jobofferhastags/1 or /jobofferhastags/1.json
  def show
  end

  # GET /jobofferhastags/new
  def new
    @jobofferhastag = Jobofferhastag.new
  end

  # GET /jobofferhastags/1/edit
  def edit
  end

  # POST /jobofferhastags or /jobofferhastags.json
  def create
    @jobofferhastag = Jobofferhastag.new(jobofferhastag_params)

    respond_to do |format|
      if @jobofferhastag.save
        format.html { redirect_to @jobofferhastag.joboffer, notice: "Jobofferhastag was successfully created." }
        format.json { render :show, status: :created, location: @jobofferhastag }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @jobofferhastag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jobofferhastags/1 or /jobofferhastags/1.json
  def update
    respond_to do |format|
      if @jobofferhastag.update(jobofferhastag_params)
        format.html { redirect_to @jobofferhastag.joboffer, notice: "Jobofferhastag was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @jobofferhastag }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @jobofferhastag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobofferhastags/1 or /jobofferhastags/1.json
  def destroy
    @jobofferhastag.destroy!

    respond_to do |format|
      format.html { redirect_to jobofferhastags_path, notice: "Jobofferhastag was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jobofferhastag
      @jobofferhastag = Jobofferhastag.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def jobofferhastag_params
      params.expect(jobofferhastag: [ :joboffer_id, :user_id, :tag_id, :tag_attributes => {} ])
    end
end
