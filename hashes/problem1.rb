books = ["Design as Art", "Anathem", "Shogun"]
authors = ["Bruno Munari", "Neal Stephenson", "James Clavell"]

books_author_hash = {}
authors.map.with_index { |author, i|
  books_author_hash[author.split(" ")[0].downcase.to_sym] = books[i]
}
puts books_author_hash
