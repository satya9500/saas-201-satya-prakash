todos = [
  ["Send invoice", "money"],
  ["Clean room", "organize"],
  ["Pay rent", "money"],
  ["Arrange books", "organize"],
  ["Pay taxes", "money"],
  ["Buy groceries", "food"],
]

# categorize = []

# for todo in todos
#   for category in categorize
#     if todo[1] == category[0]
#     end
#   end
# end

# puts categorize
categorize = [["money", []], ["organize", []], ["food", []]]

for todo in todos
  if todo[1] == "money"
    categorize[0][1].push(todo[0])
  elsif todo[1] == "organize"
    categorize[1][1].push(todo[0])
  elsif todo[1] == "food"
    categorize[2][1].push(todo[0])
  end
end

for category in categorize
  puts ("#{category[0]}:\n\t#{category[1].join("\n\t")}")
end
