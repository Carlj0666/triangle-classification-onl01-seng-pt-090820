class Triangle
  
  attr_accessor :tri_length_a, :tri_length_b, :tri_length_a
  
  def initialize(tri_length_a:, tri_length_b:,tri_length_c:)
    @tri_length_a = tri_length_a
    @tri_length_b = tri_length_b
    @tri_length_c = tri_length_c
  end
  
  def kind
    if tri_length_a == tri_length_b && tri_length_a == tri_length_c
      return :equilateral
      elsif tri_length_a != tri_length_b && tri_length_c || tri_length_b != tri_length_a && tri_length_c || tri_length_c != tri_length_a && tri_length_b
      return :isosceles
    else
      return :scalene
    end
  end
end
  
  class TriangleError < StandardError
  end
  
end
