class Teacher < ApplicationRecord
  belongs_to :school
  belongs_to :schedule
  belong_to :docente
end
