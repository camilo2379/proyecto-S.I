class Program < ApplicationRecord
  belongs_to :school
  has_many :subjects
  def to_s
	nombre
end
end
