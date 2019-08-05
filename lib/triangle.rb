class Triangle
  attr_accessor :a , :side_b , :c
  
  def initialze(side_a,side_b, side_c)
    @a = a 
    @b = b
    @c = c 
  end 
  
  def kind 
    validate_triangle
    if a == b && b == c
      :equilateral 
    elsif 
    a == b || b == c || c == a
      :isosceles
    else 
      :scalene
    end 
  end 
  
  
  def validate_triangle
    real_triangle =  [(a + b > c),(c+b > a), (c+a > b) ]
    [a,b,c].each do |side|
     if side = 0 
       real_triangle = false 
       raise TriangleError if real_triangle = false
     end 
   end 
     
     class TriangleError < StandardError 
     end 
end
