class Project < ActiveRecord::Base
  has_many :issues
  has_many :milestones
  belongs_to :company
  belongs_to :owner, :class_name => 'Company', :foreign_key => 'owner_company_id'

  has_many :project_accesses
  has_many :users, :through => :project_accesses
end
