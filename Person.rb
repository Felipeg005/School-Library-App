class Person
  def initialize(id, name = 'unknown', age, parent_permission true)
    @id = id
    @name = name
    @age = age
    @parent_permission = parent_permission
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

  private
  def is_of_age?
    if @age >= 18
      return true
    else
      return false
    end
  end
end
