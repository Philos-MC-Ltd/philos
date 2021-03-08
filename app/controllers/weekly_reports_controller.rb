class WeeklyReportsController < ApplicationController
  before_action :set_weekly_report, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, only: %i[ create update destroy ]
  # GET /weekly_reports or /weekly_reports.json
  def index
    @weekly_reports = WeeklyReport.all
  end

  # GET /weekly_reports/1 or /weekly_reports/1.json
  def show
  end

  # GET /weekly_reports/new
  def new
    @weekly_report = WeeklyReport.new
    1.times { @weekly_report.activities.build }
  end

  # GET /weekly_reports/1/edit
  def edit
    1.times { @weekly_report.activities.build }
  end

  # POST /weekly_reports or /weekly_reports.json
  def create
    @weekly_report = WeeklyReport.new(weekly_report_params)
    @weekly_report.user_id = current_user.id
    respond_to do |format|
      if @weekly_report.save
        format.html { redirect_to @weekly_report, notice: "Weekly report was successfully created." }
        format.json { render :show, status: :created, location: @weekly_report }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @weekly_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /weekly_reports/1 or /weekly_reports/1.json
  def update
    respond_to do |format|
      if @weekly_report.update(weekly_report_params)
        format.html { redirect_to @weekly_report, notice: "Weekly report was successfully updated." }
        format.json { render :show, status: :ok, location: @weekly_report }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @weekly_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weekly_reports/1 or /weekly_reports/1.json
  def destroy
    @weekly_report.destroy
    respond_to do |format|
      format.html { redirect_to weekly_reports_url, notice: "Weekly report was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weekly_report
      @weekly_report = WeeklyReport.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def weekly_report_params
      params.require(:weekly_report).permit(:done_at, :lesson, :challenge, activities_attributes:[:id,
                                                                                                 :from,
                                                                                                 :to,
                                                                                                 :action])
    end
end