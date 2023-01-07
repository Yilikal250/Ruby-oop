class Rental
  def initialize(date, person, book)
    @date = date
    @person = person
    person.add_rental(self)
    @book = book
    book.add_rental(self)
  end
  attr_reader :person, :book
  attr_accessor :date
end
