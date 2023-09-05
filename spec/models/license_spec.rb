require 'rails_helper'

RSpec.describe License, type: :model do
  subject { build(:license) }

  it { is_expected.to validate_presence_of(:key) }
  it { is_expected.to validate_uniqueness_of(:key).case_insensitive }

  it { is_expected.to belong_to :game }

  it_behaves_like "name searchable concern", :license
  it_behaves_like "paginatable concern", :license
end
