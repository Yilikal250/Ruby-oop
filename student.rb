class Student < Person
  def initialize(classroom)
    @classroom = classroom
    super(name, age, parent_permission, classroom)
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end
