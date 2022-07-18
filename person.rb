class Person
   attr_reader :id
   attr_accessor :name, :age

    def initialize(age, name = 'unknown', parent_permission = true)
        @id = Random.rand(1..100)
        @name = name 
        @age = age
        @permission_granted = permission_granted

    end

    private
    def is_of_age
        if @age >= 18
            return true 
        else 
            return false
    end

    Public 
    def can_use_services 
        if is_of_age || @permission_granted
            return true
        else 
            return false
    end 
end 













# This a Person class
class Person
    attr_accessor :name, :age
    attr_reader :id
  
    def initialize(age, name = 'Unknown', parent_permission: true)
      @id = Random.rand(1..100)
      @name = name,
              @age = age,
              @parent_permission = parent_permission
    end
  
    def can_use_services?
      if isof_age? || @parent_permission
        true
      else
        false
      end
    end
  
    private
  
    def isof_age?
      @age >= 18
    end
  end


