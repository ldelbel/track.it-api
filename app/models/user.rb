class User < ApplicationRecord
  validates :name, presence: true
  
  has_many :running_sessions
end
