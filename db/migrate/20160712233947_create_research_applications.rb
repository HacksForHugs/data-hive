class CreateResearchApplications < ActiveRecord::Migration
  def change
    create_table :research_applications do |t|
      t.integer :user_id
      t.integer :project_id
      t.timestamps null: false
      t.integer :status
    end
  end
end
