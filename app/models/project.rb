class Project < ApplicationRecord
  belongs_to :manager, inverse_of: :projects
  has_many :tasks, inverse_of: :project
  has_many :interns, through: :tasks, inverse_of: :project
end
