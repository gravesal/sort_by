# Main file for
module Parser
  file = "flashcard_samples.txt"
  def self.get_cards_from_file(file)
    array = []
    File.open(file, 'r')  do |file|
      file.each_line.each_slice(2) do |definition, answer|
        array << {definition: definition, answer: answer}
      end
    end
    array
  end
end
