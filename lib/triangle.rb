require "pry"

class Triangle
  
  attr_accessor :a, :b, :c
  
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end
  
  def tri_test(a, b, c)
    
  end
    
    
  def kind(a, b, c)
    if a == 0 || b == 0 || c == 0
      begin
      raise TriangleError
      rescue PartnerError => error
      puts error.message
    end
      
    if a + b < c || a + c < b || b + c < a
      begin
      raise TriangleError
      rescue TriangleError => error
      puts error.message
    end
    
    if a == b && a == c
      return :equilateral
      elsif a != b && a != c && b != c
      return :scalene
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
