class Todo < ApplicationRecord
  belongs_to :goal
  has_many :todo_tags
  has_many :tags
  has_many :tags, through: :todo_tags

  accepts_nested_attributes_for :todo_tags

  acts_as_list scope: [:goal_id]

  validates :position, numericality: { only_integer: true, allow_nil: true }
  validates :content, presence: true
  validates :done, inclusion: { in: [true, false] }
  after_initialize :set_default, if: :new_record?

  private
  def set_default
      self.done = false if self.done.blank?
  end
end
