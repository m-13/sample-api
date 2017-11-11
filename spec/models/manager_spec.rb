require 'rails_helper'

RSpec.describe Manager, type: :model do
  context 'relationships'  do
    it { is_expected.to have_many(:projects) }
    it { is_expected.to have_many(:tasks).through(:projects) }
    it { is_expected.to have_many(:interns).through(:tasks) }
  end
end
