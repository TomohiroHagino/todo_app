class Tag < ApplicationRecord
  belongs_to :user
  has_many :todo_tags, dependent: :destroy
  has_many :todos, through: :todo_tags

  validates :name, presence: true
  validates :name, uniqueness: true
end