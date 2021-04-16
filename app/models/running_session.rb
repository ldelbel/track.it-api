class RunningSession < ApplicationRecord
  validates_presence_of %i[distance duration start_time]

  belongs_to :daily_run
  has_one :user, through: :daily_runs
end
