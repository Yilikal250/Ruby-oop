class Teacher < Person
    def initialize(age, specialization, name = 'Unknown', parent_permission: true)
      @specialization = specialization
      super(name, age, parent_permission, classroom, specialization)
    end
  
    def can_use_services?
      true
    end
end
  