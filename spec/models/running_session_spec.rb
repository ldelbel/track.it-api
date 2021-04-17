require 'rails_helper'

RSpec.describe RunningSession, type: :model do
  it { should belong_to(:daily_run) }
  it { should validate_presence_of(:distance) }
end
