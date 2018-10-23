class School < ApplicationRecord
	has_many :teachers
	has_many :programs
	has_many :students
	def to_s
		nombre
	end	
end
