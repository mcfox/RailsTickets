class Category < ActiveRecord::Base
  has_many :issues
  has_many :responses
  belongs_to :project
  belongs_to :user, :foreign_key => 'default_assignee_id'

end
