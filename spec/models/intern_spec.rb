require 'rails_helper'

RSpec.describe Intern, type: :model do
  context 'relationships'  do
    it { is_expected.to have_many(:tasks) }
  end
end
