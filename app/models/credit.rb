class Credit < ApplicationRecord
	has_many :subjects
	def to_s
	numero
end
end
