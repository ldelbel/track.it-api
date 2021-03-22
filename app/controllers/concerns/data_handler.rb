module DataHandler
  def fill_data
    params[:avg_speed] = calculate_speed_kms_per_hour(params[:distance], params[:duration])
    params[:avg_pace] = calculate_pace_hours_per_km(params[:distance], params[:duration])
  end

  private

  def calculate_speed_kms_per_hour(distance,duration)
    duration.zero? ? 0 : distance / duration
  end

  def calculate_pace_hours_per_km(distance,duration)
    distance.zero? ? 0 : duration / distance
  end
end