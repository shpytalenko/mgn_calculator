class ReportsController < ApplicationController
  before_action :set_report, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @reports = Report.all
    respond_with(@reports)
  end

  def show
    respond_with(@report)
  end

  def new
    @report = Report.new
    @report.day_id = params[:day]
    respond_with(@report)
  end

  def edit
  end

  def create
    @report = Report.new(report_params)
    flash[:notice] = 'Report was successfully created.' if @report.save
    respond_with(@report.day)
  end

  def update
    flash[:notice] = 'Report was successfully updated.' if @report.update(report_params)
    respond_with(@report)
  end

  def destroy
    @report.destroy
    respond_with(@report)
  end

  private
    def set_report
      @report = Report.find(params[:id])
    end

    def report_params
      params.require(:report).permit(:worker_id, :day_id, :clock_in, :clock_out, :tips, :salary_complition, :total_after_complition)
    end
end
