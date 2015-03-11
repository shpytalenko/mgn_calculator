class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.datetime :date
      t.string :total_tips
      t.string :total_hours
      t.string :total_tips_per_hour
      t.string :total_complition

      t.timestamps
    end
  end
end
