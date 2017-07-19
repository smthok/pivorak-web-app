class Expense < ApplicationRecord
  validates :event_id, presence: true
  belongs_to :event

  mount_uploader :attachment, FileUploader
end
