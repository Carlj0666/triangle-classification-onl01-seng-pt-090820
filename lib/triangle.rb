class Triangle
  
  attr_accessor :tri_length_a, :tri_length_b, :tri_length_a
  
  def initialize(tri_length_a:, tri_length_b:,tri_length_c:)
    @tri_length_a = tri_length_a
    @tri_length_b = tri_length_b
    @tri_length_c = tri_length_c
  end
  
  def kind
    :equilateral
    
  end
  
end
