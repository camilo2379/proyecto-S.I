class Student < ApplicationRecord
  belongs_to :schedule
  belongs_to :user
  belongs_to :school
  belongs_to :semester
end
