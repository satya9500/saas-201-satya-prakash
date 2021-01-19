require "active_record"

class Todo < ActiveRecord::Base
  def to_displayable_string
    display_status = completed ? "[X]" : "[ ]"
    display_date = due_date == Date.today ? nil : due_date
    "#{id}. #{display_status} #{todo_text} #{display_date}"
  end

  def self.filter_todos
    all.map { |todo| todo.to_displayable_string }
  end

  def self.show_list
    puts "My Todo-list\n\n"

    puts "Overdue\n"
    puts Todo.where("due_date < ?", Date.today).filter_todos
    puts "\n\n"

    puts "Due Today\n"
    puts Todo.where(due_date: Date.today).filter_todos
    puts "\n\n"

    puts "Due Later\n"
    puts Todo.where("due_date > ?", Date.today).filter_todos
    puts "\n\n"
  end

  def self.add_task(new_todo)
    Todo.create!(todo_text: new_todo[:todo_text], due_date: Date.today + new_todo[:due_in_days], completed: false)
  end

  def self.mark_as_complete!(todo_id)
    Todo.update(todo_id, completed: true)
  end
end
