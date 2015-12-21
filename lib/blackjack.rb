def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
  return
end

def deal_card
  # code #deal_card here
  cardvalue = rand(10) + 1 #random generation
  return cardvalue
end

def display_card_total(card_total)
  sum = card_total
  puts "Your cards add up to #{sum}"
  return sum
end

def prompt_user
    phrase = "Type 'h' to hit or 's' to stay"
    puts phrase
end

def get_user_input
  # code #get_user_input here
  user_input = gets.chomp
  return user_input
end

def end_game(card_total)
    puts "Sorry, you hit #{card_total}. Thanks for playing!"
  # code #end_game here
end

def initial_round
 sum = deal_card + deal_card
return display_card_total(sum)

# code #initial_round here
end

def hit?(card_total)
    prompt_user
    input = get_user_input
    #conditions
    if(input == "s")
        card_total
    elsif input == "h"
        cardthree = deal_card
        h_total = card_total + cardthree
    else
        invalid_command
    end
    # code hit? here
end

def invalid_command
    puts "Invalid command entered"
    get_user_input
    # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
    welcome
    i_sum = initial_round
    until i_sum > 21
        i_sum = hit?(i_sum)
        display_card_total(i_sum)
        end
        end_game(i_sum)
  # code runner here
end


    
