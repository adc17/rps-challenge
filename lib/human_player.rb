class HumanPlayer
  attr_reader :name, :choice

  def initialize(name)
    @name = name
    @choice_made = false
  end

  def set_choice(arg)
    self.choice = arg.downcase.to_sym
  end

  def print_choice
    choice.capitalize.to_s
  end

  private
  attr_writer :choice
  attr_accessor :choice_made

end
