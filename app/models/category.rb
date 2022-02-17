class Category < ApplicationRecord
  belongs_to :user
  has_many :tasks, dependent: :destroy

  validates :name,
            presence: true,
            length: { maximum: 20 }

  validates :details,
            presence: true,
            length: { within: 10..100 }
end
