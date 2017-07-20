class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def toggle_student
   self.student = !self.student
   self.save!
  end

end
