require "pry"

class Triangle
  
  attr_accessor :a, :b, :c
  
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end


  def kind
    def kind 
    zero_or_less = a <= 0 || b <= 0 || c <= 0 
    inequal = a + b <= c || a + c <= b || b + c <= a
    if zero_or_less || inequal
      raise TriangleError
    elsif a == b && a == c && b == c
      :equilateral
    elsif a == c || a == b || b == c
      :isosceles
    elsif a != b && a != c && b != c
      :scalene
    end
    end
    end
    end
  end
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