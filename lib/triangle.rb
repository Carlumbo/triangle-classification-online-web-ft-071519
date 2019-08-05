class Triangle
  attr_accessor :a, :b, :c
  
  def initialize(a,b,c)
    @a = a
    @b  = b
    @c = c 
  end 
  
  def kind 
    triangle 
    if a == b && b == c 
      :equilateral 
    elsif a == b || b == c || c == a 
      :isosceles
    else 
      :scalene
    end
  end 
  
  def triangle 
    real_triangle =  [(a + b > c), (b + c > a) , (c + a > b)]
    [a, b, c].each do |side|
      real_triangle << false if side <= 0 
      raise TriangleError if real_triangle.include?(false)
    end 
  end 
  
  class TriangleError < StandardError 
  end 
end 
