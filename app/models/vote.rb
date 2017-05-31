class Vote < ApplicationRecord
  belongs_to :voter, class_name: 'User'
  belongs_to :target, polymorphic: true

  validates :voter, :target, presence: true
end
