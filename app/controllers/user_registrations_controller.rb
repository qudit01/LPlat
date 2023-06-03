class UserRegistrationsController < ApplicationController
  skip_before_action :require_login, only: %i[new create]
  layout 'login'

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      auto_login(@user)
      redirect_to root_path, notice: t('.success')
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name, :dni, :birthday,
                                 :phone, :address)
  end
end
