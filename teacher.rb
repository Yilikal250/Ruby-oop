require_relative './person'
# Class: Teacher inherits from Person
class Teacher < Person
  # initialize method adds a new instance variable @specialization
  def initialize(*person, specialization)
    super(*person)
    @specialization = specialization
  end

  # method to always return true in can_use_services?
  def can_use_services?
    true
  end
end
