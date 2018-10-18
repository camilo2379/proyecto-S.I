class Note < ApplicationRecord
  belongs_to :id_student
  belongs_to :id_group
  belongs_to :id_subject
end
