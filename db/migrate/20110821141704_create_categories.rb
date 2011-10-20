class CreateCategories < ActiveRecord::Migration
  def self.up
    create_table :categories do |t|
      t.integer :project_id
      t.string :name
      t.integer :default_assignee_id
      t.boolean :active

      t.timestamps
    end
  end

  def self.down
    drop_table :categories
  end
end
