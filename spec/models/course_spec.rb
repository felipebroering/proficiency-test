require 'rails_helper'

RSpec.describe Course, :type => :model do
  

  context 'validations' do
			it { is_expected.to validate_presence_of(:name)}
			it { is_expected.to ensure_length_of(:name).is_at_most(45)}
			it { is_expected.to validate_presence_of(:description)}
			it { is_expected.to ensure_length_of(:description).is_at_most(45)}
			it { is_expected.to validate_presence_of(:status)}
			it { is_expected.to ensure_inclusion_of(:status).in_array(StudentStatus.list)}
		end
end
