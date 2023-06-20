class Book
    attr_reader :title, :author, :publication_year

    def initialize(title, author, publication_year)
      @title = title
      @author = author
      @publication_year = publication_year
    end

    def info
        "タイトル：#{@title}, 著者：#{@author}, 発行年：#{@publication_year}"
    end
end
