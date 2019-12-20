class StepsController < ApplicationController
  before_action :load_user

  # Thêm thư viện wicked
  include Wicked::Wizard

  # Khai báo các step
  steps :step1, :step2, :step3

  def show
    # render ra step hiện tại
    render_wizard
  end

  def update
    @user.step = step # Lưu trạng thái step vào controller
    @user.update user_params
    render_wizard @user # render step tiếp theo
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :first_name, :last_name, :address, :phone)
  end

  def load_user
    @user = User.find params[:user_id]
  end
end
