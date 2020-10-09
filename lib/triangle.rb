require "pry"

class Triangle
  
  attr_accessor :a, :b, :c
  
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end
  
    
  def kind
    if a == 0 || b == 0 || c == 0
      begin
        raise PartnerError
      rescue PartnerError => error
          puts error.message
      end
    end
    end
  
  class TriangleError < StandardError
    def message
      "Your triangle is busted"
    end
  end
  
end
