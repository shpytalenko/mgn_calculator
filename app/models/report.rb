class Report < ActiveRecord::Base
  belongs_to :worker
  before_create :set_total
  belongs_to :day
  def set_total
    self.total_after_complition = (self.tips.to_i + self.salary_complition).to_s 
  end
end
