require_relative './nameable'

class Decorator < Nameable
  attr_accessor :nameable

  def initialize(decorator)
    super()
    @nameable = decorator
  end

  def correct_name
    @nameable.correct_name
  end
end
