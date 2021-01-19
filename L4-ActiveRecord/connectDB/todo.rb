require "active_record"

class Todo < ActiveRecord::Base
  def overdue(todo)
    due_date < Date.today ? todo : nil
  end

  def due_today(todo)
    due_date == Date.today ? todo : nil
  end

  def due_later(todo)
    due_date > Date.today ? todo : nil
  end

  def to_displayable_string
    display_status = completed ? "[X]" : "[ ]"
    display_date = due_date == Date.today ? nil : due_date
    "#{display_status} #{todo_text} #{display_date}"
  end

  def self.to_displayable_list
    all.map { |todo| todo.to_displayable_string }
  end
end
