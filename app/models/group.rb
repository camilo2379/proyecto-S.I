class Group < ApplicationRecord
  belongs_to :id_subject
  belongs_to :id_teacher
  belongs_to :id_student
end
