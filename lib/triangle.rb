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
      :euqilateral 
    elsif a == b || b == c || c == a 
      :isosceles
    else 
      :scalene
    end
  end 
  
  def triangle 
    real_triangle =  [(a + b > c), (b + c > a) , (c + a > b)]
    [a, b, c].each do |side|
