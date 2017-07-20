class CouplesController < ApplicationController
# Removed admins from users
  def student_array
    students = []
    @students = User.only_students
    students << @students
  end
# creating an array with only the ID
def student_id
  @student_id = @students.pluck(:id).to_a


end
