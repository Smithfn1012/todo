class TodoItem < ApplicationRecord
  belongs_to :todo_list

  def completed?
    !completed?_at.blank?
  end
end
