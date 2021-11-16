require 'corrector.rb'

class Person
  def initialize(id, age, name = 'unknown', parent_permission = true)
    @id = id
    @name = name
    @age = age
    @parent_permission = parent_permission
    @corrector = Corrector.new
  end

  attr_reader :id, :parent_permission
  attr_accessor :name, :age

  def can_use_services?
    is_of_age? || @parent_permission
  end

  def validate_name
    @corrector.correct_name(@name)
  end

  private

  def is_of_age?
    @age >= 18
  end
end
