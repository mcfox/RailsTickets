class CreateIssues < ActiveRecord::Migration
  def self.up
    create_table :issues do |t|
      t.integer :project_id
      t.integer :number
      t.string :subject
      t.integer :milestone_id
      t.integer :opener_user_id
      t.integer :assignee_user_id
      t.integer :category_id
      t.integer :priority_id
      t.integer :status_id

      t.timestamps
    end
  end

  def self.down
    drop_table :issues
  end
end
