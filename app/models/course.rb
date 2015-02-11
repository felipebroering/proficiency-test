class Course < ActiveRecord::Base

	validates :name, presence: true, length: { maximum: 45 } 
	validates :description, presence: true, length: { maximum: 45 }

	has_enumeration_for :status, :with => CourseStatus, required: true

	 def status_humanized
    CourseStatus.translate(CourseStatus.key_for(status))
  end
end