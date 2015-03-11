class AddDayIdToReports < ActiveRecord::Migration
  def change
    add_column :reports, :day_id, :integer
  end
end
