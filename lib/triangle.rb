class Triangle
  # write code here

  attr_reader :length, :width, :height

  def initialize(length,width,height)
      @length = length
      @width = width
      @height = height
  end

  def kind

    sides_unique = [@length, @width, @height].uniq.size

    all_sides = [@length, @width, @height]

    okay = all_sides.select{ |x| x <= 0  }.any? == false

    sorted = all_sides.sort

    triangle_equality = (sorted[0] + sorted[1]) > sorted[2] ? true : false

   case
      when sides_unique == 1 && okay && triangle_equality
        :equilateral
      when sides_unique == 2 && okay && triangle_equality
        :isosceles
      when sides_unique == 3 && okay && triangle_equality
        :scalene
      else
        raise TriangleError
   end

  end

  class TriangleError < StandardError

  end

end
