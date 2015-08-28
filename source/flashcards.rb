# Main file for
class Card
  attr_reader :definition, :answer
  #attr_accessor :correct_answer

  def initialize(cards = {})
    @definition = cards[:definition]
    @answer = cards[:answer]
    #@correct_answer = cards[:correct_answer]
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

  # def create_card
  #   Parser.get_cards_from_file("flashcard_samples.txt")
  # end


end
