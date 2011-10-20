class CreateProjects < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
      t.integer :company_id
      t.integer :owner_company_id
      t.string :name
      t.boolean :active

      t.timestamps
    end
  end

  def self.down
    drop_table :projects
  end
end
