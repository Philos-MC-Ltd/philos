class InternshipsController < ApplicationController
  before_action :set_internship, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: %i[confirm new]
  # GET /internships or /internships.json
  def index
    @read_internships = Internship.where(status: true)
    @unread_internships = Internship.where(status: false)
  end

  # GET /internships/1 or /internships/1.json
  def show
  end

  # GET /internships/new
  def new
    @internship = Internship.new
  end
  #Get /internships/confirm
  def confirm

  end

  # GET /internships/1/edit
  def edit
  end

  # POST /internships or /internships.json
  def create
    @internship = Internship.new(internship_params)
      if @internship.save
        redirect_to internship_confirm_path(@internship)
      else
        respond_to do |format|
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @internship.errors, status: :unprocessable_entity }
        end
      end
  end

  # PATCH/PUT /internships/1 or /internships/1.json
  def update
    if params[:status]
      @internship.update(status: params[:status])
      redirect_to internships_path
    elsif @internship.update(internship_params)
      redirect_to internships_path
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
      params.require(:internship).permit(:status, :position, :first_name, :last_name, :email, :phone, :gender, :college, :graduation_year, :cv, :id_card)
    end
end
