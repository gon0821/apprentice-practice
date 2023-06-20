require_relative "library.rb"
require_relative "book.rb"

kobe_library = Library.new
book1 = Book.new('半沢直樹', '池井戸潤', 2004)
book2 = Book.new('君の膵臓をたべたい', '住野よる', 2015)

kobe_library.add_book(book1)
kobe_library.add_book(book2)
# kobe_library.list_books

found_book = kobe_library.find_book('君の膵臓をたべたい')
puts "検索結果→#{found_book.info}"
