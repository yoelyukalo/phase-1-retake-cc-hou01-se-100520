class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews
    Review.all.select{|r| r.restaurant == self}
  end

  def customers
    self.reviews.map{|c| c.customer}.uniq
  end

  def average_star_rating
    a1 = Review.all.select{|r| r.restaurant == self}.map{|r| r.rating}
    a1.sum / a1.length
  end

end
