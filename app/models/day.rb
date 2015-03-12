class Day < ActiveRecord::Base
  has_many :reports
  before_create :set_total
  def set_total
   self.total_tips_per_hour = (self.total_tips.to_i/self.total_hours.to_i).to_s
  rescue
    nil
  end

end
