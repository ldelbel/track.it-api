class RunningSession < ApplicationRecord
  validates :distance, presence: true
  
  belongs_to :daily_run
  has_one :user, through: :daily_runs
end
