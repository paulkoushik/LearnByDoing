module CurrentCourse
    private
  
    def set_course
      @course = Course.find(session[:course_id])
    rescue ActiveRecord::RecordNotFound
      @course = Course.create
      session[:course_id] = @course.id
    end
  end