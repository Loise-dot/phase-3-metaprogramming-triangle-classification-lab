class Triangle
  attr_accessor :length, :height, :width
  def initialize(length, width, height)
    @length = length
    @height = height
    @width = width
  end

  def kind
    if(length * height * width <= 0)|| (((length + height) <= width) || ((length + width) <= height) || ((width + height) <= length))
        raise TriangleError
    elsif length == width && length == height
      :equilateral
    elsif length == height || length == width || height == width
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
  end
 
end
triangle = Triangle.new(2,2,2)
puts triangle.kind