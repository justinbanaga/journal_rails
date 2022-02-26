class Task < ApplicationRecord
  belongs_to :user
  belongs_to :category
  validates :name, presence: true
  validates :desc, presence: true

  scope :urgent, -> { where(due_date: Date.today) }
end
