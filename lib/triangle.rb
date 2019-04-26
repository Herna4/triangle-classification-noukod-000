class Triangle
  # write code here
  
  def initialize(side_1, side_2, side_3)
    @triangle << side_1
    @triangle << side_2
    @triangle << side_3 
    @triangle = []
  end


  def valid?
    sum_one_two = @triangle[0] + @triangle[1]
    sum_one_three = @triangle[0] + @triangle[2]
    sum_two_three = @triangle[1] + @triangle[2]

    if (@triangle.none? {|side| side <= 0}) &&
      (sum_one_two > @triangle[2] && sum_one_three > @triangle[1] && sum_two_three > @triangle[0])
       true
    else
       false
    end
  end
end
#   def kind
#     if valid?
#       if @triangle_sides.uniq.length == 1
#         return :equilateral
#       elsif @triangle_sides.uniq.length == 2
#         return :isosceles
#       else
#         return :scalene
#       end
#     else
#       raise TriangleError
#     end
#   end
# end

class TriangleError < StandardError

end




#   def valid?
#     sum_one_two = @triangle_sides[0] + @triangle_sides[1]
#     sum_one_three = @triangle_sides[0] + @triangle_sides[2]
#     sum_two_three = @triangle_sides[1] + @triangle_sides[2]

#     if (@triangle_sides.none? {|side| side <= 0}) &&
#       (sum_one_two > @triangle_sides[2] && sum_one_three > @triangle_sides[1] && sum_two_three > @triangle_sides[0])
#       return true
#     else
#       return false
#     end
#   end

#   def kind
#     if valid?
#       if @triangle_sides.uniq.length == 1
#         return :equilateral
#       elsif @triangle_sides.uniq.length == 2
#         return :isosceles
#       else
#         return :scalene
#       end
#     else
#       raise TriangleError
#     end
#   end
# end

# class TriangleError < StandardError

# end