class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

# restful
  def index
    @users = User.all
    json_response(@users)
  end

  def create
    @user = User.create!(user_params)
    json_response(@user, :created)
  end

  def show
    allow_access(response)
    json_response(@user)
  end

  def update
    @user.update(user_params)
    head :no_content
  end

  def destroy
    @user.destroy
    head :no_content
  end

# helpers
  private

  def user_params
    params.permit(:name)
  end

  def set_user
    @user = User.find(params[:id])
  end

  def allow_access(res)
    res.headers['X-Access-Control-Allow-Origin'] = '*'
  end
end
