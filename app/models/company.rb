class Company < ActiveRecord::Base
  has_many :accounts
  has_many :projects
  has_many :own_projects, :class_name => 'Project', :foreign_key => :owner_company_id
  has_many :users



end
