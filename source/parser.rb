# Main file for
module Parser
  file = "flashcard_samples.txt"
  def self.get_cards_from_file(file)
    array = []
    File.open(file, 'r')  do |file|
      file.each_line.each_slice(2) do |row|
        array << {definition: row[0], answer: row[1]}
      end
    end
    array
  end
end
