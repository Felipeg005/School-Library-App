require 'Person.rb'

class Teacher < Person
  def initialize (specialization)
    @specialization = specialization
  end

  def can_use_services?
    return true
  end
end