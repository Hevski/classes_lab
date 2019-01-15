require "pry"

class Library

  #attr_reader :books

  def initialize(books)
    @books = books
  end

 def get_books
   return @books
 end




  def book_info_by_title(book_title)
    for book in @books
      if book[:title] == book_title
        return book
      end
    end
  end

  # instead of writing new for loop, use last function
  # def rental_details_by_title(book_title)
  #   book = book_info_by_title(book_title)
  #   return book[:rental_details]
  # end

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

  def rent_book(book_title, student_name, date)
    book = book_info_by_title(book_title)
    book[:rental_details] = { student_name: student_name, date: date}
  end


  end
