require './person'

class Teacher < Person
  def initialize(specialization, age, name = 'unknown', parent_permission = true)
    super(age, name, parent_permission)
    @specialization = specialization
  end

  attr_reader :specialization

  def can_use_services?
    true
  end
end
