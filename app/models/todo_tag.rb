class TodoTag < ApplicationRecord
  belongs_to :todo
  belongs_to :tag

  validates :todo_id, :uniqueness => { :scope => :tag_id }
end
