class Schedule < ApplicationRecord
	has_many :students
	has_many :teachers
	has_many :subjects
def to_s
	hora_inicio
		
	end	
end
