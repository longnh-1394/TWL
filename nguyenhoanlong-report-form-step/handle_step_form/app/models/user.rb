class User < ApplicationRecord
  validates :email, :password, presence: true, if: :step1?
  validates :first_name, :last_name, presence: true, if: :step2?
  validates :phone, :address, presence: true, if: :step3?

  private

  def step1?
    step == "step1"
  end

  def step2?
    step == "step2"
  end

  def step3?
    step == "step3"
  end
end
