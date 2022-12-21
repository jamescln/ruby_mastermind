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
    4.times { |i| @code[i] = @colors[rand(6)] }
    print @code
  end

  # check the player's guess against the code
  def guess_check(user_guess)
    return unless user_guess.instance_of?(Array)

    user_guess.eql?(@code)
  end
end
