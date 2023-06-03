class UsersController < ApplicationController
  skip_before_action :require_login, only: [:new, :create] # this should only be used if you are allowing users to register themselves. 
  before_action :set_user, only: %i[show edit update change_status]
  decorates_assigned :user, :users

  def index
    @users = User.all
    # @filter = UserFilter.new(User.all, filter_params)
    # @pagy, @users = pagy(@filter.call)
  end

  def new
    # authorize User
    @user = User.new
  end

  def show
    @user
  end

  def create
    # authorize User
    @user = User.new(user_params)
    return if @user.save

    render :new, status: :unprocessable_entity
  end

  def edit
    # authorize @user
  end

  def update
    # authorize @user
    return if @user.update(user_params)

    render :edit, status: :unprocessable_entity
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation,
                                 :phone, :birthday, :dni, address: {})
  end
end

