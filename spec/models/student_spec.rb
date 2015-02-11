require 'rails_helper'

RSpec.describe Student, :type => :model do


		context 'validations' do
			it { is_expected.to validate_presence_of(:name)}
			it { is_expected.to ensure_length_of(:name).is_at_most(45)}
			it { is_expected.to validate_presence_of(:register_number)}
			it { is_expected.to ensure_length_of(:register_number).is_at_most(45)}
		end
end
