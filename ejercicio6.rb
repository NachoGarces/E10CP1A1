require 'faker'
module Test
  def result
    prom = (@nota1 + @nota2) / 2
    print "Promedio: #{prom} -- "
    print prom >= 4 ? 'Estudiante aprobado -->' : 'Estudiante reprobado -->'
  end
end

module Attendance
  def students_quantity
    quantity
  end
end

class Student
  attr_accessor :name
  include Test
  include Attendance
  @@quantity = 0
  def initialize(name, nota1 = 4, nota2 = 4)
    @name = name
    @nota1 = nota1
    @nota2 = nota2
    @@quantity += 1
  end

  def quantity
    @@quantity
  end
end

def ten_students
  r = Random.new
  10.times do
    student = Student.new(Faker::Dog.name, r.rand(1..7), r.rand(1..7))
    puts " #{student.result} Nombre: #{student.name}"
  end
end

ten_students
