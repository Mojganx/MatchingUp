class PagesController < ApplicationController

  def home
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def couple_generator

      redirect_to root_path
  end

  def create
    # if your  just creating 1 couple
    # @couple = Couple.new
    # @couple.pair_me
    # @student_ids =  @couple.students_id

    # if you genereate all couples
    @couples = Couple.generate_pairs
  end

  def promote
    @users = User.find params[:id]
    @users.update( :student => false )
      redirect_to root_path
  end

  def demote
    @users = User.find params[:id]
    @users.update( :student => true )
      redirect_to root_path
  end
  # def home
  #   if student?
  #     # @pair = ...
  #     render 'student_home'
  #   else
  #     @students
  #     render 'admin_home'
  #   end
  # end

end
