class HomeworkController < ApplicationController
  
  def index
    @homeworks = Homework.all
    render :homework_list
  end

  def homework_list
    if (current_user.role == 'teacher') 
      @homeworks = Homework.where(:user_id => current_user)
    elsif (current_user.role == 'student') 
      @homeworks = Homework.joins(:assignments).where(assignments: {user_id: current_user.id})
    else
        # throw error
    end
    
  end
  
  # student submissions for a question
  def student
      @student = User.find(params[:id])
      @homework = Homework.find (params[:id])
      @submissions = Submission.where(user_id: params[:id], homework_id: @homework.id)
  end
  
  
  # show homework
  def show
    if (current_user.role == 'teacher')
      # for a teacher show submissions
      @homework = Homework.find(params[:id])
      @submissions = Submission.where(homework_id: params[:id]).group(:user_id).having('submit_date = MAX(submit_date)')
      render :show_teacher
    elsif (current_user.role == 'student') 
      # for a teacher show submissions
      @homework = Homework.find(params[:id])
      @assignment = @homework.assignments.where(user_id: current_user).first
      if (!@assignment)
        # throw error
      end
      @submission = Submission.new
      @submission.homework = @homework
      render :show_student
    else
        # throw error
    end
    
  end
end
