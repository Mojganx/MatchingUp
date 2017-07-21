class Couple < ApplicationRecord
  belongs_to :user
  # Removed admins from users
  def student_array
    @students1 = []
    @selected_students = User.only_students
    @students1 << @selected_students
  end
  # creating an array with only the ID
  def student_id
    @students_id = @students1.pluck(:id).to_a
  end
  # make a new couples array and shovel sample from student_id array times two in it
  def generate_pairs
    @pairs = []
    3.times do
    @a = @students_id.sample(2)
    @pairs << @a
   #find the names again e.g. pluck(:full_name)
  end
  #we take the values of pair array out of students_id array
  def old_couple
    @old_couple = @students_id - @pair
    @students_id.delete(@pair)
  end
    #
  def generate_all_couples

  end


end
