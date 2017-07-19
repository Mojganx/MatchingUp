class UsersController < ApplicationController

  def student
    @users = User.all
  end


  def show
    @user = User.find(params[:id])
  end


end
