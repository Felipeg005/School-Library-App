# Create class Person with the following:
# Instance vars: @id, @name, and @age. check
# Constructor with name, age, and parent_permission as parameter. name and parent_permission are optional and have default values of "Unknown" and true.
# Getters for @id, @name, and @age.
# Setters for @name and @age.
Private method is_of_age? that returns true if @age is greater or equal to 18 and false otherwise.
Public method can_use_services? that returns true if person is of age or if they have permission from parents.

class Person
  def initialize (name = "unknown", age, parent_permission = true)
  @id
  @name = name
  @age = age
  end

  def id
    @id
  end

  def name
    @name
  end

  def age
    @age
  end

  def name=(value)
    @name = value
  end

  def age=(value)
    @age = value
  end

  def can_use_services?
    if is_of_age?() == true || @parent_permission == true
      return true
    else
      return false
    end
  end

  Private
  def is_of_age?
    if @age >= 18
      return true
    else
      return false
    end
  end
end