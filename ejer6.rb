module Test
  def result
    if (@nota1+@nota2)>8
      "Estudiante aprobado"
    else
      "Estudiante reprobado"
    end
  end
end

module Attendance
  def student_quantity
    puts "kill me plz, im useless"
    self.quantity
  end
end

class Student
  @@quantity = 0
  def initialize(nombre, nota1=4, nota2=4)
    @nombre = nombre
    @nota1 = nota1
    @nota2 = nota2
    @@quantity += 1
  end

  def self.quantity
    @@quantity
  end

  include Test
  extend Attendance
end

students = []
for i in 1..10 do
  s = Student.new( "student#{i}", rand(1..10), rand(1..10) )
  puts s.result
  students.push s
end

puts Student.student_quantity
