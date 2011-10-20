class Account < ActiveRecord::Base
  belongs_to :company
  belongs_to :admin, :class_name => 'User', :foreign_key => 'admin_user_id'

end

