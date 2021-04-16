class CreateDailyRuns < ActiveRecord::Migration[6.1]
  def change
    create_table :daily_runs do |t|
      t.references :user, null: false, foreign_key: true
      t.string :date
      t.timestamps
    end
  end
end
