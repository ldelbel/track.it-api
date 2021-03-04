class RunningSession < ApplicationRecord
  validates :distance, presence: true

  belongs_to :user
end
