class Triangle
  
  attr_accessor :side_1, :side_2, :side_3

    def initialize(side_1, side_2, side_3)
      @s_1 = s_1
      @s_2 = s_2
      @s_3 = s_3
    end

  def kind
    restriction = (@s_1 > 0),
                  (@s_2 > 0),
                  (@s_3 > 0),
                  (@s_1  + @s_2 > @s_3),
                  (@s_1  + @s_3 > @s_2),
                  (@s_3 + @s_2 > @s_1)

    if restriction.include?(false)
      raise TriangleError
    end

    if @s_1 == @s_2 && @s_2 == @s_3
      :equilateral
    elsif @s_1 == @s_2 || @s_1 == @s_3 || @s_2 == @s_3
      :isosceles
    else
      :scalene
    end
  end
  
  def kind
    if valid?
      if @triangle_sides.uniq.length == 1
        return :equilateral
      elsif @triangle_sides.uniq.length == 2
        return :isosceles
      else
        return :scalene
      end
    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError
  end
end