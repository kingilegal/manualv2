class Student < ApplicationRecord
  belongs_to :grade
  belongs_to :institute
  belongs_to :teacher
end
