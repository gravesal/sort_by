require_relative 'parser'

# Main file for
class Card
  attr_reader :definition, :answer

  def initialize(new_card = {})
    @definition = new_card[:definition]
    @answer = new_card[:answer]

  end

  def is_correct?(user_response)
    if user_response == @answer
      true
    else
      false
    end
  end

  def to_s
     "#{definition}" #and #{answer}"
  end
end

class Deck

  attr_accessor :cards
  def initialize
    @cards = CreateCard.create_card
  end

  def pull_card
    pulled_card = @cards[@cards.length-1]
  end

  def discard
    @cards.pop
  end

end

module CreateCard
# Create cards for us to use.
  def self.create_card
    card_hash = []
    Parser.parse_file('flashcard_samples.txt').each_slice(2) do |definition, answer|
      card_hash << {:definition => definition, :answer => answer}
    end
      newCard_array = []
      card_hash.each do |card_object|
        newCard_array << Card.new(card_object)
      end
      newCard_array
  end
end

module Parser
# Read the data and give it to us.
  # attr_reader :array

  def self.parse_file(file)
    array = []
    File.open(file, 'r')  do |file|
      file.each_line do |row|
        array << row
      end
    end
    array
  end
end


 #aces = Deck.new
# puts
 #p aces.discard
# puts
# p aces

# CONTROLLER
# GREET THEM

puts "Hi, Welcome to the flashcard game! Wanna Play?! (Yes or No)"
puts "Type Quit to quit"

user_input = gets.chomp

if user_input == "Yes"
  play_game = Deck.new
else
  puts "See Ya!"
end

puts game_card = play_game.pull_card
user_guess = gets.chomp+("\n")

while user_guess != ("QUIT"+ "\n") || play_game.cards.length != 0

  while game_card.is_correct?(user_guess) != true
    if user_guess == ("QUIT"+ "\n")
      abort ("Bye!!!")
    else
      puts "try again, please..."
      user_guess = gets.chomp+("\n")
    end
  end

  puts "That's correct"
  play_game.discard
  puts "Next Card!"
  puts game_card = play_game.pull_card
  user_guess = gets.chomp+("\n")
end
