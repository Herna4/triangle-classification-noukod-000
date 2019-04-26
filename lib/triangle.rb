class Triangle
  
  attr_accessor :triangle_sides_1, :triangle_sides_2, :triangle_sides_3

    def initialize(triangle_sides_1, triangle_sides_2, triangle_sides_3)
      @triangle_sides_1 = triangle_sides_1
      @triangle_sides_2 = triangle_sides_2
      @triangle_sides_3 = triangle_sides_3
    end

  def kind()
    if (@triangle_sides_1 <= 0) || (@triangle_sides_2 <= 0) || (@triangle_sides_3 <= 0)
      raise TriangleError
    elsif (@triangle_sides_1 + @triangle_sides_2 <= @triangle_sides_3) || (@triangle_sides_1 + @triangle_sides_3 <= @triangle_sides_2) || (@triangle_sides_2+@triangle_sides_3 <= @triangle_sides_1)
      raise TriangleError
    else
      if (@triangle_sides_1 == @triangle_sides_2) && (@triangle_sides_2 == @triangle_sides_3)
        :equilateral
      elsif (@side_1 == @side_2) || (@side_2 == @side_3) || (@side_1 == @side_3)
        :isosceles
      elsif (@side_1 != @side_2) && (@side_2 != @side_3) && (@side_1 != @side_3)
        :scalene
      end
    end

  end

end

class TriangleError < StandardError
  # triangle error code
end
