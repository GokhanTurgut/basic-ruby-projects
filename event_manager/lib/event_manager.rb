# frozen_string_literal: true

puts 'EventManager initialized.'
puts '--------------------------'

lines = File.readlines('event_attendees.csv')
lines.each_with_index do |line, index|
  next if index.zero?

  columns = line.split(',')
  puts columns[2]
end
