# Main file for

module Parser
  def self.get_cards_from_file
    array = []
    File.foreach(file)  do |file|
    file.each_line.each_slice(2).do |question, answer|
      array << {definition: definition, answer: answer}
    end
    array
  end
end
