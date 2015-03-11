class DaysController < ApplicationController
  before_action :set_day, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @days = Day.all
    respond_with(@days)
  end

  def show
    @reports = @day.reports
    respond_with(@day)
  end

  def new
    @day = Day.new
    respond_with(@day)
  end

  def edit
  end

  def create
    @day = Day.new(day_params)
    @day.save
    respond_with(@day)
  end

  def update
    @day.update(day_params)
    respond_with(@day)
  end

  def destroy
    @day.destroy
    respond_with(@day)
  end

  private
    def set_day
      @day = Day.find(params[:id])
    end

    def day_params
      params.require(:day).permit(:date, :total_tips, :total_hours, :total_tips_per_hour, :total_complition)
    end
end
