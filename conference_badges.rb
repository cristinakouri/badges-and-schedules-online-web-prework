# Write your code here.
def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
  #we want to go through an array of names and get the badge for each name and return that array of names
  #get the name by iterating through array
  new_array = [] #blank array outside loop to access later
  attendees.each do |person|
    #put badges in new array 
    new_array << badge_maker(person)
  end
  new_array
end

def assign_rooms(array)
  #we want to take an array of attendees and assign each one a room and return an array of strings with room/attendee
  blank_array = []
  counter = 1 #counter is outside of loop so loop doesn't reset it each time
  array.each do |attendee|
    blank_array << "Hello, #{attendee}! You'll be assigned to room #{counter}!"
    counter += 1
  end
  blank_array
end

def printer(participants)
  #put out the elements in batch_badge_creator and assign_rooms method
  batch_badge_creator(participants).each do |badge|
    puts badge
  end
  assign_rooms(participants).each do |rooms|
    puts rooms
  end
end

