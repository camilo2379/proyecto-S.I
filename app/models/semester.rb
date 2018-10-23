class Semester < ApplicationRecord
	has_many :students
	has_many :notes
def to_s
	numero
end
end
