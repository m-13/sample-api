class Intern < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable,
          :confirmable
  include DeviseTokenAuth::Concerns::User

  has_many :tasks, inverse_of: :intern
  belongs_to :project, inverse_of: :interns, optional: true
end
