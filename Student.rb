require 'person.rb'

class Student < Person
  def initialize(classroom)
    @classroom = classroom
  end

  attr_reader :classroom

  def play_hooky
    '¯\(ツ)/¯'
  end
end
