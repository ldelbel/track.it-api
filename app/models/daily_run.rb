class DailyRun < ApplicationRecord
  belongs_to :user
  has_many :running_sessions
end
