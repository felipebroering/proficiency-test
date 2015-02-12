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


	context 'rules' do
			it 'only open' do
				started_course = FactoryGirl.create(:course)
				finished_course = FactoryGirl.create(:course, status: CourseStatus::FINISHED)
				open_course = FactoryGirl.create(:course, status: CourseStatus::OPEN)
				courses = Course.open
				expect(courses).to include(open_course)
				expect(courses).not_to include([started_course, finished_course])
			end
		end
end
