require "pry"

class Triangle
  
  attr_accessor :a, :b, :c
  
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

    
  def kind
      triangle_mod = [a, b, c].sort
  raise TriangleError if a <= 0 or a + b <= c
  return :equilateral if a == c
  return :isosceles if a == b or b == c
  return :scalene
    # all_zero = a <= 0 || b <= 0 || c <= 0
    # less_than_1 = a + b < c || a + c < b || b + c < a
    # not_equilateral = a < b && b > c
    # scalene = a > b && b > c && a != c
    # all_lesser = a < b && b < c
    # if all_zero || less_than_1 || not_equilateral || all_lesser
    #   raise TriangleError
    # elsif a == b && a == c && a != 0 && b != 0 && c != 0
    #   return :equilateral
    # elsif a == b || a == c || b == c
    #   return :isosceles
    # elsif scalene
    #   return :scalene
    # end

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