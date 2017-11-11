require 'rails_helper'

RSpec.describe Task, type: :model do
  context 'relationships' do
    it { is_expected.to belong_to(:project) }
    it { is_expected.to belong_to(:intern) }
  end
end
