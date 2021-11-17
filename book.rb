class Book
  attr_accessor :title, :author

  def initialize(title, author)
    @title = title
    @author = author

    private
    @rentals = []
  end

  def add_rental(date, person)
    rental = Rental.new(date, self, person)
    rentals.push(rental)
  end
end
