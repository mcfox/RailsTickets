class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
    belongs_to :company
    has_many :administered_accounts, :class_name => 'Account', :foreign_key => 'admin_user_id'
    has_many :project_accesses
    has_many :opened_issues, :class_name => 'Issue', :foreign_key => 'opener_user_id'
    has_many :assigned_issues, :class_name => 'Issue', :foreign_key => 'assignee_user_id'
    has_many :responses, :foreign_key => 'responder_user_id'
    has_many :default_assignments, :class_name => 'Category', :foreign_key => 'default_assignee_id'

end
