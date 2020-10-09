require "pry"

class Triangle
  
  attr_accessor :a, :b, :c
  
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end
  
    
  def kind

    if a == b && a == c
      return :equilateral
      end
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