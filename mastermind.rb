# frozen_string_literal: true

require_relative 'classes/state_handler'

state = StateHandler.new('Player')
state.create_code
puts 'Enter your guess below'
if state.guess_check([gets.chomp, gets.chomp, gets.chomp, gets.chomp])
  puts 'You win!'
else
  puts 'Not even close'
end
