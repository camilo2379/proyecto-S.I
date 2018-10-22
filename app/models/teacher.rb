class Teacher < ApplicationRecord
  belongs_to :school
  belongs_to :schedule
  belongs_to :docente
end
