require "pry"

class Library

  attr_reader :books

  def initialize(books)
    @books = books
  end

  def book_info_by_title(book_title)
    for book in @books
      if book[:title] == book_title
        return book
      end
    end
  end

  def rental_details_by_title(book_title)
    for book in @books
      if book[:title] == book_title
        return book[:rental_details]
      end
    end
  end

  def add_new_book(new_book)
    @books << new_book
  end


  end
