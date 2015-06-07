class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.datetime :start_time
      t.integer  :home_team_id
      t.integer  :away_team_id

      t.timestamps null: false
    end
    add_foreign_key :games, :teams, column: :home_team_id, primary_key: :id
    add_foreign_key :games, :teams, column: :away_team_id, primary_key: :id
  end
end
