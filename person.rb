require_relative './nameable'
require_relative './capitalize_decorator'
require_relative './trimmer_decorator'
class Person < Nameable
  # initialize method

  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rental = []
  end
  # getter method

  attr_reader :id
  attr_accessor :name, :age

  # getter from relations
  attr_accessor :rental, :classroom

  # Public methods

  def can_use_services?
    is_of_age? || @parent_permission
  end

  def correct_name
    @name
  end

  def create_rental(date, book)
    Rental.new(date, self, book)
  end

  # Private methods

  private

  def of_age?
    @age >= 18
  end
end
