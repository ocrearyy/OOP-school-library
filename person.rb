require './nameable'
require './capitalize_decorator'
require './trimmer_decorator'

class Person < Nameable
  attr_reader :id, :rental
  attr_accessor :name, :age

  def initialize(age, name = 'unknown', parent_permission: true)
    @id = Random.rand(1..100)
    @name = name
    @age = age
    @permission_granted = parent_permission
    super
  end

  private

  def of_age?
    @age >= 18
  end

  public

  def can_use_services
    if is_of_age? || @permission_granted
      true
    else
      false
    end
  end

  def correct_name
    @name
  end
end

person = Person.new(22, 'maximilianus')
person.correct_name
capitalized_person = CapitalizeDecorator.new(person)
puts capitalized_person.correct_name
capitalized_trimmed_person = TrimmerDecorator.new(capitalizedPerson)
puts capitalized_trimmed_person.correct_name
