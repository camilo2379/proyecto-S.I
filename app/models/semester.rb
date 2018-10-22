class Semester < ApplicationRecord
	has_many :students
	has_many :notes
end
