class CreateResponses < ActiveRecord::Migration
  def self.up
    create_table :responses do |t|
      t.integer :issue_id
      t.text :description
      t.integer :responder_user_id
      t.integer :opener_user_id
      t.integer :assignee_user_id
      t.integer :category_id
      t.integer :priority_id
      t.integer :status_id

      t.timestamps
    end
  end

  def self.down
    drop_table :responses
  end
end
