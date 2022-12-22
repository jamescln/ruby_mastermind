# frozen_string_literal: true

require_relative 'classes/state_handler'

state = StateHandler.new('Player')
state.create_code
puts 'Enter your guess below'
player_guess = [gets, gets, gets, gets]
if state.guess_check(player_guess)
  puts 'You win!'
else
  puts 'Not even close'
end
