class DropUserTagsTable < ActiveRecord::Migration
  def change
  	drop_table :user_tags
  end
end
