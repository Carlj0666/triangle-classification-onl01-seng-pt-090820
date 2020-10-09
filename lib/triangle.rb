require "pry"

class Triangle
  
  attr_accessor :a, :b, :c
  
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

    
  def kind
    all_zero = a <= 0 || b <= 0 || c <= 0
    less_than_1 = a + b < c || a + c < b || b + c < a
    not_equilateral = a < b && b > c
    all_greater = a > b && b > c
    all_lesser = a < b && b < c
    if all_zero || less_than_1 || not_equilateral || all_greater
      raise TriangleError
    elsif a == b && a == c && a != 0 && b != 0 && c != 0
      return :equilateral
    elsif a == b || a == c || b == c
      return :isosceles
    elsif 
      return :scalene
    end

  end
  
  
  class TriangleError < StandardError
    def message
      "Your triangle is busted"
    end
  end
  
end


    # if a == 0 || b == 0 || c == 0
    #   puts error.message


    #   begin
    #     raise TriangleError
    #   rescue TriangleError => error
    #       puts error.message
    #   end
    # end