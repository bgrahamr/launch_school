require 'yaml'

MESSAGES = YAML.load_file('rps_messages.yml')
VALID_CHOICES = %w(r p s l sp)

def display(message, sleep_sec: 0, sys_clear: false)
  # Formats output messages, option to pause program for
  # a given number of seconds; option to clear terminal

  system('clear') if sys_clear
  puts "=> #{message}"
  sleep(sleep_sec) if sleep_sec != 0
end

def show_greeting()
  display(MESSAGES['greeting'], sleep_sec: 3,
          sys_clear: true)
end

def show_farewell()
  display(MESSAGES['farewell'], sleep_sec: 2,
          sys_clear: true)
end

def show_rules()
  loop do
    display(MESSAGES['rules'], sys_clear: true)
    escape = gets.chomp
    break if escape
  end
end

def show_scoreboard(score_arr)
  display("Player: #{score_arr[0]}   Computer: #{score_arr[1]}",
          sys_clear: true)
end

def show_player_move(move)
  display("You played: #{move}", sleep_sec: 1)
end

def show_comp_move(move)
  display("Computer played: #{move}", sleep_sec: 1)
end

def show_round_result(result)
  round_message = case result
                  when 0 then 'win'
                  when 1 then 'lose'
                  else 'tie'
                  end
  display("You #{round_message} that round!", sleep_sec: 3)
end

def show_game_result(result)
  display(result, sleep_sec: 3)
end

def read_rules?()
  display(MESSAGES['explain_rules'], sys_clear: true)
  response = gets.chomp
  %w( y yes).include?(response.downcase)
end

def get_player_move()
  # Solicits user input and returns validated input
  user_choice = String.new

  loop do
    display(MESSAGES['move_prompt'])
    user_choice = gets.chomp.downcase

    break if VALID_CHOICES.include?(user_choice)
    display(MESSAGES['error_prompt'], sleep_sec: 2)
  end
  
  user_choice
end

def get_comp_move()
  VALID_CHOICES.sample
end

def decide_round_result(player, computer)
  # Takes player and computer choices and returns 0 if player wins,
  # 1 if computer wins, and nil if round is a tie
  # The trumps hash shows what a choice (key) trumps (value)
  trumps = {
    'r'   => ['l', 's'],
    'p'   => ['r', 'sp'],
    's'   => ['l', 'p'],
    'l'   => ['p', 'sp'],
    'sp'  => ['r', 's']
  }

  return if player == computer
  trumps[player].include?(computer) ? 0 : 1
end

def update_score(current_score, result)
  current_score[result] += 1 unless result == nil
  current_score
end

def winner?(current_score, points_to_win)
  current_score.include?(points_to_win)
end

def decide_game_result(score_arr, points_to_win)
  score_arr[0] == points_to_win ? 'You win!' : 'You lose...'
end

# Initiate game
wins_needed = 3       # wins needed for best of 5
score       = [0, 0]  # [player_score, computer_score]

show_greeting()
show_rules if read_rules?()

loop do   # Main loop
  show_scoreboard(score)

  player_move = get_player_move()
  show_player_move(player_move)

  comp_move = get_comp_move()
  show_comp_move(comp_move)

  round_result  = decide_round_result(player_move, comp_move)
  show_round_result(round_result)

  score = update_score(score, round_result)
  break if winner?(score, wins_needed)
end

game_result = decide_game_result(score, wins_needed)
show_scoreboard(score)
show_game_result(game_result)

show_farewell()
