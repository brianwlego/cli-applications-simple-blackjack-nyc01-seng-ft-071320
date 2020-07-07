require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
  total
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets 
end

def end_game (players_card_total)
  puts "Sorry, you hit #{players_card_total}. Thanks for playing!"
end



def initial_round
  card_one = deal_card
  card_two = deal_card
  total = card_one + card_two
  display_card_total(total)
end



def hit?(current_card_total)
  prompt_user
  input = get_user_input
  case input 
  when "s"
    current_card_total
  when "h"
    deal_card+current_card_total
  end
  if input != "s" or "h"
    invalid_command
    prompt_user
    input = get_user_input
  end  
end

def invalid_command
  p "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
    
