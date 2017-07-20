class CouplesController < ApplicationController
# Removed admins from users
    def student_array
      @students = []
      @students = User.only_students
      @students << @students
    end
# creating an array with only the ID
    def student_id
      @student_id = @students.pluck(:id).to_a
    end
# make a new couples array and shovel sample from student_id array times two in it
    def make_couples
      @pair = []
      @pair << @student_id.sample(2)
    end
#we take the values of pair array out of students_id array
    def old_couple
      @old_couple = @student_id - @pair
      @student_id.delete(@pair)
    end

    def generate_all_couples

        @old_couple


end
