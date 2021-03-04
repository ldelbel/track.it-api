class CreateRunningSessions < ActiveRecord::Migration[6.1]
  def change
    create_table :running_sessions do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :distance
      t.datetime :datetime
      t.float :avg_pace
      t.float :avg_speed

      t.timestamps
    end
  end
end
