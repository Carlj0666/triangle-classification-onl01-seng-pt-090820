require "pry"

class Triangle
  
  attr_accessor :a, :b, :c
  
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end


  def kind
    sum_zero = a + b + c
    tri_inequality = a + b > c || b + c > a || a + c > b
    all_zero = a <= 0 || b <= 0 || c <= 0 && !
    if tri_inequality && all_zero && a == b && a == c && a != 0 && b != 0 && c != 0
      :equilateral
    elsif tri_inequality && all_zero && a == b || a == c || b == c
      :isosceles
    elsif tri_inequality && all_zero && a != b && b != c && a != c
      :scalene
    # all_zero = a <= 0 || b <= 0 || c <= 0
    # less_than_1 = a + b < c || a + c < b || b + c < a
    # not_equilateral = a < b && b > c
    # all_greater = a > b && b > c
    # all_lesser = a < b && b < c
    # if all_zero || less_than_1 || not_equilateral || all_greater || all_lesser
    #   raise TriangleError
    # elsif a == b && a == c && a != 0 && b != 0 && c != 0
    #   :equilateral
    # elsif a == b || a == c || b == c
    #   :isosceles
    # else
    #   :scalene
    end
  end
  
  
  class TriangleError < StandardError
    def message
      "Your triangle is busted"
    end
  end
  
end


  # a, b, c = [a, b, c].sort
  # raise TriangleError if a <= 0 or a + b <= c
  # return :equilateral if a == c
  # return :isosceles if a == b or b == c
  # return :scalene