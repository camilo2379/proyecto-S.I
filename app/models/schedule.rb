class Schedule < ApplicationRecord
	has_many :students
	has_many :teachers
	has_many :subjects
def to_s
	hora_inicio
		
end	
	def self.ingresarMonitoria(student_id, subject_id)
		subject = Subject.find_by(codigo: subject_id)
		subject.student_id = id_student
		if subject.save
			return "Monitoria asignada correctamente"
		else
			return subject.errors.inspect + " " + "La monitoria no se ha asignado correctamente. Intente mas tarde o contacte con soporte"
		end
	end
	
end
