books = ["Design as Art", "Anathem", "Shogun"]
authors = ["Bruno Munari", "Neal Stephenson", "James Clavell"]

author_books = books.map.with_index { |book, i| "#{book} was written by #{authors[i]}" }
puts author_books
