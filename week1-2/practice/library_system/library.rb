class Library
  attr_reader :books

  def initialize
    @books = []
  end

  def add_book(book)
    @books << book
  end

  def list_books
    @books.each { |book| puts book.info}
  end

  def find_book(title)
        @books.find { |book| book.title == title }
    end

  def search_button
    '半沢直樹'
  end
end
