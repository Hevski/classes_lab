require('minitest/autorun')
require('minitest/rg')
require_relative('../classes_extension.rb')

class TestLibrary < MiniTest::Test

  def setup
    @books = [
      {
    title: "lord_of_the_rings",
    rental_details: {
     student_name: "Jeff",
     date: "01/03/19"
    }
  },
  {
    title: "The Day of the Triffids",
    rental_details: {
      student_name: "Heather",
      date: "02/02/2019"
    }
  },
  {
    title: "1984",
    rental_details: {
      student_name: "Claud",
      date: "25/02/2019"
    }
  }
    ]

    @new_book =   {
        title: "Help Me",
        rental_details: {
          student_name: " ",
          date: " "
        }
      }

    @library = Library.new(@books)
  end

  def test_get_books
    assert_equal(@books, @library.get_books())
  end


  def test_get_books
    library_books = Library.new(@books)
    assert_equal(@books, library_books.get_books)
  end

  def test_book_info_by_title
    library_books = Library.new(@books)
    book_info_by_title = library_books.book_info_by_title("1984")
    assert_equal(@books[2], book_info_by_title)
  end

  def test_rental_details_by_title
    library_books = Library.new(@books)
    rental_details_by_title = library_books.rental_details_by_title("The Day of the Triffids")
    assert_equal(@books[1][:rental_details], rental_details_by_title)
  end

  # def test_add_new_book
  #   @library.add_new_book("Help me")
  #   actual = @library.book_info_by_title("Help me")
  #   assert_equal(expected, actual)
  # end


  def test_add_new_book
    library_books = Library.new(@books)
    add_new_book = library_books.add_new_book("Help me")
    assert_equal(@books, add_new_book)
  end

  # Create a method that changes the rental details of a book by taking in the title of the book,
  # the student renting it and the date it's due to be returned.

  def test_rent_book
    @library.rent_book("1984", "John", "14/2/19" )
    book = @library.book_info_by_title("1984")
    assert_equal("John", book[:rental_details][:student_name])
    assert_equal("14/2/19", book[:rental_details][:date])
  end





end
