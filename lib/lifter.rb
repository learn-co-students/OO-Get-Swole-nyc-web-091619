class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def all_memberships
    Membership.all.select {|membership| membership.lifter == self}
  end

  def all_gyms
    all_memberships.map {|memb| memb.gym}
  end

  def total_cost
    all_memberships.inject(0) {|sum, memb| memb.cost + sum}
  end

  def sign_up(gym, cost)
    Membership.new(cost, self, gym)
  end

  def self.avg_lift_total
    sum = all.inject(0) {|sum, lifter| lifter.lift_total + sum}
    sum / all.count
  end

  def self.all
    @@all
  end

end
