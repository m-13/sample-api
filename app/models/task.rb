class Task < ApplicationRecord
  belongs_to :project, inverse_of: :tasks
  belongs_to :intern, inverse_of: :tasks
  belongs_to :manager, inverse_of: :tasks
end
