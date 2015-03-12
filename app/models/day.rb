class Day < ActiveRecord::Base
  has_many :reports
  before_create :set_total
  def set_total
   self.total_tips_per_hour = (self.total_tips.to_d/self.total_time.to_d).to_s
  rescue
    nil
  end

  def total_time
    self.reports.map {|x| x.total_hours.to_d}.inject(0, :+).to_s
  end
  def total_tips_hour
    (self.total_tips.to_d/self.total_time.to_d).to_s
  end

  def total_compl
    self.reports.map {|x| x.salary_compl.to_d rescue 0}.inject(0, :+).to_s
  end
end
