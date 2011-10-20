class Issue < ActiveRecord::Base
  belongs_to :project
  belongs_to :category
  belongs_to :priority
  belongs_to :status
  belongs_to :milestone

  belongs_to :opener, :class_name => 'User', :foreign_key => 'opener_user_id'
  belongs_to :assignee, :class_name => 'User', :foreign_key => 'assignee_user_id'
  has_many :responses

  scope :open, where(:status_id => 1 )
  scope :resolved, where(:status_id => 2 )
  scope :closed, where(:status_id => 3 )
end
