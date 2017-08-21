class VisitRequest < ApplicationRecord
  include ::Searchable

  PENDING   = :pending
  APPROVED  = :approved
  CANCELED  = :canceled
  REFUSED   = :refused

  enum status:  [PENDING, APPROVED, CANCELED, REFUSED]

  validates :event_id, :user_id, presence: true

  belongs_to :event
  belongs_to :user

  delegate :full_name, to: :user

  scope :main_list,    -> { where(waiting_list: false) }
  scope :waiting_list, -> { where(waiting_list: true)  }
  scope :final,        -> { where(status: [APPROVED]).main_list }
  scope :used,         -> { where(visited: true) }

  def main_list!
    update(waiting_list: false)
  end

  def waiting_list!
    update(waiting_list: true)
  end

  def final_decision?
    confirmed? || refused?
  end
end
