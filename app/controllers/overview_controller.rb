class OverviewController < ApplicationController
  before_action :roles, only: [:index, :edit_user]
  def index
    if Flip.on?(:specific_user_role)
      User.convert_users_with_roles
    else
      User.convert_users_with_user_roles
    end

    @users = User.all || []
    @chucknorris = JSON.parse(HTTParty.get('https://api.chucknorris.io/jokes/random').body)
  end

  def create_user
    @user = User.new(user_params.except('user_role'))
    @user.user_role = UserRole.find_or_create_by(name: user_params['user_role']) if Flip.on?(:specific_user_role)
    @user.save
    redirect_to root_path
  end

  def who_am_i
    @user = User.find_by_id(params['id'])
    render json: @user
  end

  def edit_user
    @user = User.find_by_id(params['id'])
    render partial: '/overview/edit_user'
  end

  def save_me
    @user = User.find_by_id(user_params['id'])
    @user.update(user_params)
    redirect_to root_path
  end

  private

  def roles
    @roles = UserRole.all.where(approved: true) if Flip.on?(:specific_user_role)
  end

  def user_params
    params.require(:user).permit(:id, :first_name, :middle_name, :last_name, :role, :user_role)
  end
end
