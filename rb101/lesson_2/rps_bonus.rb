# frozen_string_literal: true

require 'yaml'

MESSAGES = YAML.load_file('rps_messages.yml')
VALID_CHOICES = {
  'r' => 'rock',
  'p' => 'paper',
  's' => 'scissors',
  'l' => 'lizard',
  'sp' => 'spock'
}.freeze

def display(message, sleep_sec: 0, sys_clear: false)
  # Formats output messages, option to pause program for
  # a given number of seconds; option to clear terminal

  system('clear') if sys_clear
  puts "=> #{message}"
  sleep(sleep_sec) if sleep_sec != 0
end

def show_continue_play
  puts ''
  display(MESSAGES['continue'])

  response = gets.chomp
  %w[y yes].include?(response.downcase)
end

def show_greeting
  display(MESSAGES['greeting'], sys_clear: true)
  display(MESSAGES['sub_greeting'], sleep_sec: 2)
end

def show_farewell
  display(MESSAGES['farewell'], sleep_sec: 2,
                                sys_clear: true)
end

def show_rules
  display(MESSAGES['rules'], sys_clear: true)
  show_continue_play
end

def show_scoreboard(score_hash)
  display("Player: #{score_hash['Player']}   Computer: #{score_hash['Computer']}",
          sys_clear: true)
end

def show_player_move(move)
  move = VALID_CHOICES[move]
  display("You played: #{move}", sleep_sec: 0.5)
end

def show_comp_move(move)
  move = VALID_CHOICES[move]
  display("Computer played: #{move}", sleep_sec: 0.5)
end

def show_round_result(result)
  round_message = case result
                  when 'Player' then 'win'
                  when 'Computer' then 'lose'
                  else 'tie'
                  end
  display("You #{round_message} that round!", sleep_sec: 0.5)
end

def show_game_result(score_arr, points_to_win)
  result = decide_game_result(score_arr, points_to_win)
  message = if result == 'Player'
              'Congratulations! You won the game!'
            else
              'The Computer got best of 5...better luck next time...'
            end

  display(message)
end

def read_rules?
  display(MESSAGES['explain_rules'], sys_clear: true)
  response = gets.chomp
  show_rules if %w[y yes].include?(response.downcase)
end

def player_picks_move
  move = ''

  loop do
    display(MESSAGES['move_prompt'])

    move = gets.chomp.downcase
    break if VALID_CHOICES.include?(move) ||
             VALID_CHOICES.values.include?(move)

    display(MESSAGES['error_prompt'], sleep_sec: 1)
  end

  move = VALID_CHOICES.key(move) if VALID_CHOICES.values.include?(move)
  move
end

def comp_picks_move
  VALID_CHOICES.keys.sample
end

def decide_round_result(player, computer)
  trumps = {
    'r' => %w[l s],
    'p' => %w[r sp],
    's' => %w[l p],
    'l' => %w[p sp],
    'sp' => %w[r s]
  }

  return if player == computer

  trumps[player].include?(computer) ? 'Player' : 'Computer'
end

def initiate_score
  score = {
    'Player' => 0,
    'Computer' => 0
  }

  score
end

def update_score(current_score, result)
  current_score[result] += 1 unless result.nil?
  current_score
end

def winner?(current_score, points_to_win)
  current_score.values.include?(points_to_win)
end

def decide_game_result(score_hash, points_to_win)
  score_hash['Player'] == points_to_win ? 'Player' : 'Computer'
end

def another_round?
  display(MESSAGES['another_round'])
  response = gets.chomp

  %w[y yes].include?(response.downcase)
end

# Initiate game
wins_needed = 3

show_greeting
show_rules if read_rules?

# Main loop
loop do
  score = initiate_score

  loop do
    show_scoreboard(score)

    player_move = player_picks_move
    show_player_move(player_move)

    comp_move = comp_picks_move
    show_comp_move(comp_move)

    round_result = decide_round_result(player_move, comp_move)
    show_round_result(round_result)
    show_continue_play

    score = update_score(score, round_result)
    break if winner?(score, wins_needed)
  end

  show_scoreboard(score)
  show_game_result(score, wins_needed)

  break unless another_round?
end

show_farewell
