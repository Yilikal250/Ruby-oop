class Teacher < Person
  def initialize(specialization)
    @specialization = specialization
    super(name, age, parent_permission, classroom, specialization)
  end

  def can_use_services?
    true
  end
end
