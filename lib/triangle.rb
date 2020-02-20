class Triangle
  attr_accessor :a, :b, :c
  
  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end
  
  def kind
    if @a + @b < @c || @b + @c < @a || @c + @a < @b
      begin
        raise TriangleError
        rescue TriangleError => error
        puts error.message
      end
    end
    elsif @a == @b == @c
      :equilateral
    end
    elsif @a == @b && @a != @c || @b == @c && @b != @a || @c == @a != @b
      :isosceles
    end
    elsif @a != @b != @c
      :scalene
    end
  end
    
      
  end
  
  class TriangleError < StandardError
    def message
      "Not a triangle, stoopid"
    end
  end
    
  
end
