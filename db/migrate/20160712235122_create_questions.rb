class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :project_application_id
      t.string :title
      t.text :answer
      t.timestamps null: false
    end
  end
end
