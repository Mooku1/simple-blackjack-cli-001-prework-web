def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  return sum
end

def hit?(card_total)
 prompt_user
   answer = get_user_input
   if answer == "s"
       card_total
   elsif answer == "h"
       card_total = card_total + deal_card
   else
       invalid_command
       prompt_user
   end
end

# def hit?(card_total)
#    prompt_user
#    answer = get_user_input
#    if answer == "s"
#        card_total
#    elsif answer == "h"
#        card_total = card_total + deal_card
#    else
#        invalid_command
#        prompt_user
#    end


 # it "calls on #prompt_user then #get_user_input" do
 #    expect($stdout).to receive(:puts).with("Type 'h' to hit or 's' to stay")
 #    expect(self).to receive(:get_user_input).and_return("s")
 #    hit?(7)
 #  end

 #  it "returns an integer which is the card total" do
 #    expect(self).to receive(:get_user_input).and_return("s")
 #    expect(hit?(20)).to eq(20)
 #  end

 #  it "does not deal another card if user types 's'" do
 #    expect(self).to receive(:get_user_input).and_return("s")
 #    expect(hit?(7)).to eq(7)
 #  end

 #  it "deals another card when user types 'h'" do
 #    expect(self).to receive(:get_user_input).and_return("h")
 #    expect(self).to receive(:deal_card).and_return(7)
 #    expect(hit?(7)).to eq(14)
 #  end




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
      total = hit?(total)
      display_card_total(total)
    end
  end_game(total)
end
    
##########################################################################################################

# describe "#runner" do

#   before(:each) do
#     def get_user_input
#       "h"
#     end 
#   end

#   it "calls on the #welcome method, 
#   then on the #initial_round method, 
#   then calls #hit? and #display_card_total methods
#   -until- the card sum is greater than 21,
#   then calls on the #end_game method" do

#     expect(self).to receive(:deal_card).at_least(3).times.and_return(10)
#     expect(self).to receive(:get_user_input).and_return("h")

#     expect($stdout).to receive(:puts).with("Welcome to the Blackjack Table")
#     expect($stdout).to receive(:puts).with("Your cards add up to 20")
#     expect($stdout).to receive(:puts).with("Type 'h' to hit or 's' to stay")
#     expect($stdout).to receive(:puts).with("Your cards add up to 30")
#     expect($stdout).to receive(:puts).with("Sorry, you hit 30. Thanks for playing!")
#     runner
#   end
# end
