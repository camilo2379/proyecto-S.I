class Note < ApplicationRecord
  belongs_to :semester
  has_many :subjects
  
end
