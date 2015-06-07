seahawks = Team.find_or_create_by(name: "Seahawks", city: "Seattle")
bears = Team.find_or_create_by(name: "Bears", city: "Chicago")
superbowl = Game.find_or_create_by(home_team: seahawks, away_team: bears) do |game|
  game.start_time = DateTime.new(2016,2,1,18,0,0)
end
