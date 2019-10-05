# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

l1 = Lifter.new("Lifter1", 10)
l2 = Lifter.new("Lifter1", 20)
l3 = Lifter.new("Lifter1", 30)
l4 = Lifter.new("Lifter1", 40)
l5 = Lifter.new("Lifter1", 50)

g1 = Gym.new("Gym1")
g2 = Gym.new("Gym1")
g3 = Gym.new("Gym1")

m1 = Membership.new(200, l1, g1)
m2 = Membership.new(45, l1, g2)
m3 = Membership.new(55, l1, g3)
m4 = Membership.new(200, l2, g1)
m5 = Membership.new(200, l3, g1)
m6 = Membership.new(45, l4, g2)
m7 = Membership.new(55, l5, g3)

binding.pry

puts "Gains!"
