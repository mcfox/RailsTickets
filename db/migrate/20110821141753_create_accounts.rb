class CreateAccounts < ActiveRecord::Migration
  def self.up
    create_table :accounts do |t|
      t.integer :company_id
      t.integer :admin_user_id
      t.string :subdomain
      t.boolean :trial
      t.boolean :active

      t.timestamps
    end
  end

  def self.down
    drop_table :accounts
  end
end
