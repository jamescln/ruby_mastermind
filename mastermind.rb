# frozen_string_literal: true

# import classes
require_relative 'classes/state_handler'

# instances
state = StateHandler.new('Player')
state.create_code

# game loop
puts 'Enter your guess below'
player_guess = [gets, gets, gets, gets].map!(&:chomp)
if state.guess_check(player_guess)
  puts 'You win!'
else
  puts 'Not even close'
end
