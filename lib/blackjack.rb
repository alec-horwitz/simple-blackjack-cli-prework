def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  1 + rand(6)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  sum
end

def hit?(card_total)
  prompt_user
  input = get_user_input
  valid_command = false
  until valid_command
    if input == "h"
      valid_command = true
      card_total += deal_card
    elsif input == "s"
      valid_command = true
    else
      invalid_command
    end
  end
  card_total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  until card_total > 21
    display_card_total(card_total)
    card_total += hit?(card_total)
  end
  end_game(card_total)


  # deal_card
  # display_card_total(card_total)
  # prompt_user
  # get_user_input
  # end_game(card_total)
  # initial_round
  # hit?(card_total)
  # invalid_command

end
