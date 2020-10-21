require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


a1 = Customer.new("yoel", "yukalo")
a2 = Customer.new("walter", "white")
a3 = Customer.new("lebron", "james")

b1 = Restaurant.new("Applebees")
b2 = Restaurant.new("Whataburger")
b3 = Restaurant.new("Mcdonalds")

c1 = Review.new(a1, b1, 9)
c2 = Review.new(a2, b2, 4)
c3 = Review.new(a3, b3, 10)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line