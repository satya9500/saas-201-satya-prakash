require "active_record"

class Todo < ActiveRecord::Base
  def to_displayable_string
    display_status = completed ? "[X]" : "[ ]"
    display_date = due_date == Date.today ? nil : due_date
    "#{id}. #{display_status} #{todo_text} #{display_date}"
  end

  def self.map_to_displayable_string
    all.map { |todo| todo.to_displayable_string }
  end

  def self.overdue
    all.where("due_date < ?", Date.today)
  end

  def self.due_today
    all.where(due_date: Date.today)
  end

  def self.due_later
    all.where("due_date > ?", Date.today)
  end

  def self.show_list
    puts "My Todo-list\n\n"

    puts "Overdue\n"
    puts Todo.overdue.map_to_displayable_string
    puts "\n\n"

    puts "Due Today\n"
    puts Todo.due_today.map_to_displayable_string
    puts "\n\n"

    puts "Due Later\n"
    puts Todo.due_later.map_to_displayable_string
    puts "\n\n"
  end

  def self.add_task(new_todo)
    Todo.create!(todo_text: new_todo[:todo_text], due_date: Date.today + new_todo[:due_in_days], completed: false)
  end

  def self.mark_as_complete!(todo_id)
    Todo.update(todo_id, completed: true)
  end
end
