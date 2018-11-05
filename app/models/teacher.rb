class Teacher < ApplicationRecord
  belongs_to :institute
  belongs_to :grade
end
