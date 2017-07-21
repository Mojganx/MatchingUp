class CouplesController < ApplicationController

  def create
    # if your  just creating 1 couple
    @couple = Couple.new
    @couple.pair_me
    # @student_ids =  @couple.students_id

    # if you genereate all couples
    @couples = Couple.generate_pairs
  end



end
