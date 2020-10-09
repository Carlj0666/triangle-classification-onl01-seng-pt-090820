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
    
    if all_zero
      raise TriangleError
    elsif less_than_1
      raise TriangleError
    elsif a == b && a == c
      return :equilateral
    elsif a == b || a == c || b == c
      return :isosceles
    else
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