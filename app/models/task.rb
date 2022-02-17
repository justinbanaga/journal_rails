class Task < ApplicationRecord
  belongs_to :user
  belongs_to :category
  validates :desc, presence: true
end
