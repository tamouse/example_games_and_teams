class Team < ActiveRecord::Base
  has_many :home_games, class_name: "Team", foreign_key: "home_game_id"
  has_many :away_games, class_name: "Team", foreign_key: "away_game_id"
end
