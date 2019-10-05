class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  # - Get a list of all the memberships that a specific lifter has
  def memberships
    Membership.all.select do |membership|
      membership.lifter == self
    end
  end

  # - Get a list of all the gyms that a specific lifter has memberships to
  def my_gyms
    memberships.map do |membership|
      membership.gym
    end
  end

  # - Get the average lift total of all lifters

  def self.avg_lift_total
    lift_ttl = Lifter.all.map do |lifter|
      lifter.lift_total
    end

    total_of_all_the_lifts = lift_ttl.inject do |sum, n|
      sum + n
    end
    average = total_of_all_the_lifts/Lifter.all.count
  end
  
  
  #  - Given a gym and a membership cost, sign a specific lifter up for a new gym instance
   def sign_me_up(gym, membership_cost)
     Membership.new(self, gym, membership_cost)
   end


end






