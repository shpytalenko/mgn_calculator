class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.belongs_to :worker, index: true
      t.time :clock_in
      t.time :clock_out
      t.string :tips
      t.string :salary_complition
      t.string :total_after_complition

      t.timestamps
    end
  end
end
