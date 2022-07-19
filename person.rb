class Person
  attr_reader :id
  attr_accessor :name, :age

  def initialize(age, name = 'unknown', _parent_permission: true)
    @id = Random.rand(1..100)
    @name = name
    @age = age
    @permission_granted = permission_granted
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
