class CreateCompanies < ActiveRecord::Migration
  def self.up
    create_table :companies do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :country
      t.string :time_zone
      t.string :postal_code
      t.string :web_address
      t.string :phone

      t.timestamps
    end
  end

  def self.down
    drop_table :companies
  end
end
