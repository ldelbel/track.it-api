class CreateRunningSessions < ActiveRecord::Migration[6.1]
  def change
    create_table :running_sessions do |t|
      t.references :daily_run, null: false, foreign_key: true
      t.float :distance
      t.float :goal
      t.bigint :start_time
      t.float :duration
      t.float :avg_pace
      t.float :avg_speed
      t.timestamps
    end
  end
end
