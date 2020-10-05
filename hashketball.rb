require 'pry'

def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end
 
#Build a method, num_points_scored that takes in an argument of a player's name and returns the number of points scored for that player.

def num_points_scored (player_name)
  game_hash.each do |location, team_data|
    team_data[:players].each do |player|
      return player[:points] if player[:player_name]==player_name
    end
  end 
end

def shoe_size (player_name)
  game_hash.each do |location, team_data|
    team_data[:players].each do |player|
      return player[:shoe] if player[:player_name]==player_name
    end
  end
end 

def team_colors (team_name)
  game_hash.each do |location, team_data|
    if team_data[:team_name]==team_name
      return team_data[:colors].map
  end 
  end 
end

#Build a method, team_names, that operates on the game Hash to return an Array of the team names.

def team_names
  game_hash.map {|location, team_data| team_data[:team_name]}
end

#Build a method, player_numbers, that takes in an argument of a team name and returns an Array of the jersey numbers for that team.

def player_numbers (team_name)
  player_numbers_list = []
  game_hash.each do |location, team_data|
    if team_data[:team_name] == team_name
      team_data[:players].each do |player|
        player.each do |key, value|
          if key == :number 
            player_numbers_list << value
          end
        end
      end
    end
  end
  player_numbers_list
end

#Build a method, player_stats, that takes in an argument of a player's name and returns a hash of that player's stats.

require 'pry'

def player_stats(player_name)
  player_stats = {}
  game_hash.each do |location, team_data|
    team_data[:players].each do |player|
      if player[:player_name]==player_name
      player.each do |stats|
         player_stats = player
end 
end 
end 
end 
player_stats
end 

#Build a method, big_shoe_rebounds, that will return the number of rebounds associated with the player that has the largest shoe size. Break this one down into steps:

#First, find the player with the largest shoe size
#Then, return that player's number of rebounds
#Remember to think about return values here.

def big_shoe_rebounds
  big_shoe = 0
  rebounds = 0
  game_hash.each do |location, team_data|
    team_data[:players].each do |player|
      if player[:shoe] > big_shoe
        big_shoe = player[:shoe]
        rebounds = player[:rebounds]
end 
end 
end
rebounds 
end 

def most_points_scored (player_name)
  game_hash.each do |location, team_data|
    team_data[:players].each do |player|
end 

 # If you'd like to work on the bonus, uncomment these tests.
# describe 'bonus' do
#   describe '#most_points_scored' do
#     it 'returns Ben Gordon' do
#       expect(most_points_scored).to eq("Ben Gordon")
#     end
#   end
#   describe '#winning_team' do
#     it 'returns the Brooklyn Nets' do
#       expect(winning_team).to eq("Brooklyn Nets")
#     end
#   end
#   describe '#player_with_longest_name' do
#     it 'returns Brendan Haywood' do
#       expect(player_with_longest_name).to eq("Brendan Haywood")
#     end
#   end
# end
# describe 'super bonus' do
#   describe '#long_name_steals_a_ton?' do
#     it 'returns true' do
#       expect(long_name_steals_a_ton?).to eq(true)
#     end
#   end
# end