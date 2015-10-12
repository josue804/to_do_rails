class Task < ActiveRecord::Base
  belongs_to :lists
  validates :description, :presence => true
  scope :done, -> { where(done: true) }
  scope :not_done, -> { where(done: false) }
end
