# frozen_string_literal: true

# StateHandler will, unbelievably, handle the state of the game
class StateHandler
  # set initial values for new instance
  def initialize(name)
    @pl_name = name
    @colors = %w[red blue yellow green purple orange]
    @code = ['', '', '', '']
  end

  # create a random code
  def create_code
    @code.fill(@colors.rand(6))
  end
end
