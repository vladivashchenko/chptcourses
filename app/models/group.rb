class Group < ApplicationRecord
  belongs_to :teacher
  has_many :students
end
