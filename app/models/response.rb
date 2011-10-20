class Response < ActiveRecord::Base
  belongs_to :issue
  belongs_to :category
  belongs_to :priority
  belongs_to :status
  belongs_to :opener, :class_name => 'User', :foreign_key => 'opener_user_id'
  belongs_to :assignee, :class_name => 'User', :foreign_key => 'assignee_user_id'
  belongs_to :responder, :class_name => 'User', :foreign_key => 'responder_user_id'
end
