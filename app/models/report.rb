class Report < ActiveRecord::Base
  belongs_to :worker
  before_create :set_total
  belongs_to :day
  def set_total
    self.total_after_complition = (self.total_hours.to_d*35).to_s 
    self.tips = (self.day.total_tips_per_hour.to_d*self.total_hours.to_d).to_s
    self.salary_complition = (self.total_after_complition.to_d - self.tips.to_d).to_s
  end
  
  def total_hours
    (clock_out - clock_in)/3600 rescue '0'
  end

end
