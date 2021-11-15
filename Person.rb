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