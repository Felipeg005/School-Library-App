require './corrector'

class Person
  def initialize(age, name = 'unknown', parent_permission = true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @corrector = Corrector.new
    @rentals = []
  end

  attr_reader :id, :parent_permission
  attr_accessor :name, :age

  def can_use_services?
    is_of_age? || @parent_permission
  end

  def validate_name
    @corrector.correct_name(@name)
  end

  def add_rental(date, book)
    rental = Rental.new(date, book, self)
    rentals.push(rental)
  end

  private

  def is_of_age?
    @age >= 18
  end
end
