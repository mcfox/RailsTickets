ActiveAdmin.register Issue do
  scope :open
  scope :resolved
  scope :closed
end
