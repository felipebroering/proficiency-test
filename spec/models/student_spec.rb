require 'rails_helper'

RSpec.describe Student, :type => :model do


		context 'validations' do
			it { is_expected.to validate_presence_of(:name)}
			it { is_expected.to ensure_length_of(:name).is_at_most(45)}
			it { is_expected.to validate_presence_of(:register_number)}
			it { is_expected.to ensure_length_of(:register_number).is_at_most(45)}
			it { is_expected.to validate_presence_of(:status)}
			it { is_expected.to ensure_inclusion_of(:status).in_array(StudentStatus.list)}
		end


		context 'rules' do
			it 'only active' do
				active_student = FactoryGirl.create(:student)
				inactive_student = FactoryGirl.create(:student, status: StudentStatus::INACTIVE)
				students = Student.active
				expect(students).to include(active_student)
				expect(students).not_to include(inactive_student)
			end
		end

end
