class InternshipsController < ApplicationController
  before_action :set_internship, only: %i[ show edit update destroy ]

  # GET /internships or /internships.json
  def index
    @internships = Internship.all
  end

  # GET /internships/1 or /internships/1.json
  def show
  end

  # GET /internships/new
  def new
    @internship = Internship.new
  end

  # GET /internships/1/edit
  def edit
  end

  # POST /internships or /internships.json
  def create
    @internship = Internship.new(internship_params)

    respond_to do |format|
      if @internship.save
        format.html { redirect_to @internship, notice: "Internship was successfully created." }
        format.json { render :show, status: :created, location: @internship }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @internship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /internships/1 or /internships/1.json
  def update
    respond_to do |format|
      if @internship.update(internship_params)
        format.html { redirect_to @internship, notice: "Internship was successfully updated." }
        format.json { render :show, status: :ok, location: @internship }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @internship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /internships/1 or /internships/1.json
  def destroy
    @internship.destroy
    respond_to do |format|
      format.html { redirect_to internships_url, notice: "Internship was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_internship
      @internship = Internship.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def internship_params
      params.require(:internship).permit(:first_name, :last_name, :email, :phone, :gender, :college, :graduation_year, :cv)
    end
end
