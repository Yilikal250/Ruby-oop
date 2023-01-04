class Person
  attr_accessor :id, name, age

  def initialize(_name, _age, _parent_permission)
    @name = 'Unknown'
    @parent_permission = true
  end

  private

  def of_age?
    age >= 18
  end

  def can_use_services?
    return unless age >= 18 && parent_permission == true

    true
  end
end
