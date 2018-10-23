class Student < ApplicationRecord
  belongs_to :Schedule
  belongs_to :User
  belongs_to :School
  belongs_to :Semester
  def self.calcPromedio(id_student)
		student = Student.find(id_student)
		#EL ESTUDIANTE TIENE UN PROMEDIO DE MAS DE 3.8 Y ES ESTUDIATE?
		if student.promedio >= 3.8 and student.tipo_estudiante == 0
			return true
		#EL ESTUDIANTE TIENE UN PROMEDIO DE MAS DE 4.2 Y ES EGRESADO?
		elsif student.promedio >= 4.2 and student.tipo_estudiante == 1
			return true
		else
			return false
		end
	end
end
