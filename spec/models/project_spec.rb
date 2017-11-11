require 'rails_helper'

RSpec.describe Project, type: :model do
  context 'relationships'  do
    it { is_expected.to belong_to(:manager) }
    it { is_expected.to have_many(:tasks) }
    it { is_expected.to have_many(:interns).through(:tasks) }
  end
end
