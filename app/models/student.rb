  class Student < ActiveRecord::Base

  has_many :classrooms, :dependent => :delete_all

	validates :name, presence: true, length: { maximum: 45 } 
	validates :register_number, presence: true, length: { maximum: 45 }

	 has_enumeration_for :status, :with => StudentStatus, required: true

	 def status_humanized
    StudentStatus.translate(StudentStatus.key_for(status))
  end
end
