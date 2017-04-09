class Student < User
  belongs_to :group
  has_many :marks
end
