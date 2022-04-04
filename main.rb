require './classes/Question.rb'
require './classes/Player.rb'
require './classes/Match.rb'

PLAYER_ONE = 1
PLAYER_TWO = 2

print 'Enter name of Player 1: '
player_one = Player.new(gets.chomp)
print 'Enter name of Player 2: '
player_two = Player.new(gets.chomp)

player_turn = PLAYER_ONE

match = Match.new

while match.over == false
  correct_answer = Question.new.run_question(player_turn)

  match.add_point(player_turn) if correct_answer == true

  match.display_scoreboard
  player_turn = (player_turn == PLAYER_ONE ? PLAYER_TWO : PLAYER_ONE)
  puts '----- NEW TURN -----' unless match.over == true
end

winner = player_turn == PLAYER_ONE ? player_two.name : player_one.name
puts "GAME OVER: #{winner} Wins!!!"
