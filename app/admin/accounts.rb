ActiveAdmin.register Account do
  scope :all, :default => true
  scope :trial
  scope :active
end