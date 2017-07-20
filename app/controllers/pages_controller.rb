class PagesController < ApplicationController
  # def home
  #   if student?
  #     # @pair = ...
  #     render 'student_home'
  #   else
  #     @students
  #     render 'admin_home'
  #   end
  # end

  def home
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def toggle_student
   self.student = !self.student
   self.save!
  end
end
