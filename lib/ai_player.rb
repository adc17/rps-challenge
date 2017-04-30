class AiPlayer
  AI_NAME = "Random Ruby"
  attr_reader :name, :choice

  def initialize
    @name = AI_NAME
  end

  def set_choice
    self.choice = [:rock, :paper, :scissors].sample
  end

  def choice_made?
    true
  end

  private
  attr_writer :choice
end
