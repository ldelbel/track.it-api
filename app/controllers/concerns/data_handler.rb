module DataHandler
  def fill_data
    start_time = Time.at(params[:start_time] / 1000)
    finish_time = Time.at(params[:finish_time] / 1000)
    params[:duration] = ((finish_time - start_time) / 3600.0).round(3)
    params[:avg_speed] = calculate_speed_kms_per_hour(params[:distance], params[:duration])
    params[:avg_pace] = calculate_pace_hours_per_km(params[:distance], params[:duration])
  end

  private

  def calculate_speed_kms_per_hour(distance,duration)
    distance / duration
  end

  def calculate_pace_hours_per_km(distance,duration)
    duration / distance
  end
end