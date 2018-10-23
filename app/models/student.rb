class Student < ApplicationRecord
  belongs_to :schedule
  belongs_to :user
  belongs_to :school
  belongs_to :semester

  def to_s
  	
  end
end
