require 'person.rb'

class Teacher < Person
  def initialize(specialization)
    @specialization = specialization
  end

  attr_reader :specialization

  def can_use_services?
    true
  end
end
