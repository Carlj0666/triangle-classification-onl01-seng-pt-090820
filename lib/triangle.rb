class Triangle
  
  attr_accessor :a, :b, :c
  
  def initialize(a:, b:, c:)
    @a = a
    @b = b
    @c = c
  end
  
  def kind
    if a == 0 || b == 0 || c == 0
      message 
    if a == b && a == c
      return :equilateral
      elsif a != b && a != c || b != tri_length_a && tri_length_c || tri_length_c != tri_length_a && tri_length_b
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
