require './nameable'
require './capitalize_decorator'
require './trimmer_decorator'



class Person < Nameable
  attr_reader :id
  attr_accessor :name, :age

  def correct_name
    @name
  end

  def initialize(age, name = 'unknown', parent_permission: true)
    @id = Random.rand(1..100)
    @name = name
    @age = age
    @permission_granted = parent_permission
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
end

person = Person.new(22, 'maximilianus')
  person.correct_name
  capitalizedPerson = CapitalizeDecorator.new(person)
  puts capitalizedPerson.correct_name
  capitalizedTrimmedPerson = TrimmerDecorator.new(capitalizedPerson)
  puts capitalizedTrimmedPerson.correct_name