class TodoList < ApplicationRecord
  has_many :todo_items
  belongs_to :user
  def total_items
    @total_items ||= todo_items.count
  end

  def completed_items
    @completed_items ||= todo_items.completed.count
  end

  def percent_complete
    return 0 if total_items == 0
    (100 * completed_items.to_f / total_items).round(1)
  end

  def status
    case percent_complete.to_i
    when 0
      'Not Started'
    when 100
      'Complete'
    else
      'In Progress'
    end
  end

  def badge_color
    case percent_complete.to_i
    when 0
      'grey'
    when 100
      'blue'
    else
      'teal'
    end
  end

end
