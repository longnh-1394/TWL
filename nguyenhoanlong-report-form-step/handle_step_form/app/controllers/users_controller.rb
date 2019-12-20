class UsersController < ApplicationController
  def new
    @user = User.create

    redirect_to user_step_path @user, :step1
  end
end
