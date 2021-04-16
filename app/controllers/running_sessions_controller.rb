class RunningSessionsController < ApplicationController
  before_action :set_user
  before_action :set_user_running_session, only: %i[show update destroy]

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
    timestamp = running_session_params[:start_time].to_i / 1000
    daily_run_id = get_dailyrun(timestamp)
    running_session = @user.daily_runs.find(daily_run_id).running_sessions.create!(running_session_params)
    json_response(@user.running_sessions.find(running_session.id), :created)
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
    params.permit(:distance, :duration, :start_time, :avg_speed, :avg_pace, :goal)
  end

  def set_user
    @user = User.find(params[:user_id])
  end

  def set_user_running_session
    @running_session = @user.running_sessions.find_by!(id: params[:id]) if @user
  end

  def get_dailyrun(timestamp)
    today = Time.at(timestamp).strftime('%d/%m/%Y')
    daily_run = @user.daily_runs.find_by(date: today)
    return daily_run.id if daily_run

    create_dailyrun(today)
  end

  def create_dailyrun(date)
    daily_run = @user.daily_runs.create!(date: date)
    daily_run.id
  end
end
