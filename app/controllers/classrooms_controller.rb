class ClassroomsController < InheritedResources::Base

 
  private
    def set_classroom
      @classroom = Classroom.find(params[:id])
    end

    def classroom_params
      params.require(:classroom).permit(:student_id, :course_id, :entry_at)
    end
end
