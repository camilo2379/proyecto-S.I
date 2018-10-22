class Subject < ApplicationRecord
  belongs_to :credit
  belongs_to :note
  belongs_to :program
  belongs_to :schedule
end
