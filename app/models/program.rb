class Program < ApplicationRecord
  belongs_to :school
  has_many :subjects
end
