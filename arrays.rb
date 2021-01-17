# names = [["Jhumpa", "Lahiri"], ["J. K", "Rowling"], ["Devdutt", "Pattanaik"]]

# full_names = names.map { |name| "#{name[0]} #{name[1]}" }
# puts full_names
books = ["Design as Art", "Anathem", "Shogun"]
authors = ["Bruno Munari", "Neal Stephenson", "James Clavell"]

author_books = books.map.with_index { |book, i| "#{book} was written by #{authors[i]}" }
puts author_books
