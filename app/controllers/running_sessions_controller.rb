class RunningSessionsController < ApplicationController
  before_action :set_user
  before_action :set_user_running_session, only: [:show, :update, :destroy]

  # GET /users/:user_id/running_sessions
  def index
    json_response(@user.running_sessions)
  end

  # GET /users/:user_id/running_sessions/:id
  def show
    json_response(@running_session)
  end

  # POST /users/:user_id/running_sessions
  def create
    fill_data
    @user.running_sessions.create!(running_session_params)
    json_response(@user.running_sessions.first, :created)
  end

  # PUT /users/:user_id/running_sessions/:id
  def update
    @running_session.update(running_session_params)
    head :no_content
  end

  # DELETE /users/:user_id/running_sessions/:id
  def destroy
    @running_session.destroy
    head :no_content
  end

  private

  def running_session_params
    params.permit(:distance, :duration, :start_time, :finish_time, :avg_speed, :avg_pace)
  end

  def set_user
    @user = User.find(params[:user_id])
  end

  def set_user_running_session
    @running_session = @user.running_sessions.find_by!(id: params[:id]) if @user
  end
end
