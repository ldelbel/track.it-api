class User < ApplicationRecord
  validates :name, presence: true
  has_many :daily_runs, dependent: :destroy
  has_many :running_sessions, through: :daily_runs
end
