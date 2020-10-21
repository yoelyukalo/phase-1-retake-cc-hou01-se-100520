class Customer
  attr_accessor :given_name, :family_name
  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self
  end

  def full_name
    "#{@given_name} #{@family_name}"
  end

  def self.all
    @@all
  end

  def restaurants
    Review.all.select{|c| c.customer == self}.map{|r| r.restaurant}.uniq
  end

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  def num_reviews
    a1 = Review.all.select{|c| c.customer == self}
    a1.length
  end

  def self.find_by_name(name)
    self.all.find{|n| n.full_name == name}
  end

  def self.find_all_by_given_name(name)
    b1 = self.all.find{|gn| gn.given_name == name}
    b2 = []
    b2 << b1
  end
end
