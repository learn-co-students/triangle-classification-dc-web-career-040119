require "pry"

class Triangle

  attr_reader :side_a, :side_b, :side_c

  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  def none_zero?
    side_a > 0 &&
        side_b > 0 &&
        side_c > 0
  end

  def no_long_sides?
    side_a + side_b > side_c &&
        side_b + side_c > side_a &&
        side_a + side_c > side_b
  end

  def valid?
    no_long_sides? && none_zero?
  end

  def kind
    if !valid?
      raise_triangle_error
    else
      if side_a == side_b && side_a == side_c
        :equilateral
      elsif side_a == side_b || side_b == side_c || side_c == side_a
        :isosceles
      else
        :scalene
      end
    end
  end

  def raise_triangle_error
    # begin
      raise TriangleError
  # rescue
  #   end
    # rescue TriangleError => error
    #   error
    # end
  end

  #Custom errors
  class TriangleError < StandardError
#     def message
#       "ERROR: The sum of the lengths of any two sides of a triangle
#  always exceeds the length of the third side,
# and each side must be larger than 0."
#     end
  end
end




# try = Triangle.new(0,0,0)
#
# puts try.kind

