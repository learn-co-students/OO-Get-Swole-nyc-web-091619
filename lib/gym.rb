class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def all_memberships
    Membership.all.select {|membership| membership.gym == self}
  end

  def all_lifters
    all_memberships.map {|memb| memb.lifter}
  end

  def total_lift
    all_lifters.inject(0) {|sum, lifter| lifter.lift_total + sum}
  end

  def self.all
    @@all
  end


end
