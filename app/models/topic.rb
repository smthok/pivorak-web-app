class Topic < ApplicationRecord
  include Publishable
  extend FriendlyId

  belongs_to :creator, class_name: 'User'

  friendly_id :title, use: :slugged

  enum status: %i[active finished]
end
