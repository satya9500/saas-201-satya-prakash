todos = [
  ["Send invoice", "money"],
  ["Clean room", "organize"],
  ["Pay rent", "money"],
  ["Arrange books", "organize"],
  ["Pay taxes", "money"],
  ["Buy groceries", "food"],
]

todos_hash = {}

for todo in todos
  if todos_hash[todo[1].to_sym] != nil
    todos_hash[todo[1].to_sym].push(todo[0])
  else
    todos_hash[todo[1].to_sym] = [todo[0]]
  end
end

puts todos_hash

# Fill in code that will create a Hash that looks like:
#   {
#     :money =>
#       ["Send invoice", "Pay rent", ...],
#     ...
#   }
