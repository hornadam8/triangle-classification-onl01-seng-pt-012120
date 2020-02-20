class Triangle
  attr_accessor :a, :b, :c
  
  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end
  def kind
    if @a+@b<=@c || @b+@c<=@a || @c+@a<=@b || @a<=0 || @b<=0 || @c<=0  
      begin
        raise TriangleError
      end
    elsif @a == @b && @b == @c
      :equilateral
    elsif @a == @b && @a != @c || @b == @c && @b != @a || @c == @a && @c != @b
      :isosceles
    elsif @a != @b && @b != @c && @c != @a
      :scalene
    end
  end
  
  class TriangleError < StandardError
    def message
      "Not a triangle, stoopid"
    end
  end
    
  
end
