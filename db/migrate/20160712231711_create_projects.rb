class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.date :startdate
      t.date :enddate
      t.date :app_deadline
      t.text :description
      t.integer :hours_per_week
      t.integer :compensation
      t.integer :education_level
      t.integer :state, default: 1
      t.timestamps null: false
    end
  end
end
