def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets
end

def end_game(num)
  puts "Sorry, you hit #{num}. Thanks for playing!"
end

def initial_round
  c1 = deal_card
  c2 = deal_card
  display_card_total(c1+c2)
  c1+c2
end

def hit?(total)
  prompt_user
  answer = get_user_input
  
  while answer != 'h' && answer != 's' do
    invalid_command
    prompt_user
    answer = get_user_input
  end
  
  if answer == 'h' then
    total += deal_card
  end
  total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  
  until total > 21 do
    new_total = hit?(total)
    if new_total > total then
      display_card_total(total)
    end
    total = new_total
  end
  end_game(total)
end
    
