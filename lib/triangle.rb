class Triangle
  attr_accessor :length1, :length2, :length3
  # write code here
  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end


  def is_it_a_triangle?
    if length1 > 0 && length2 > 0 && length3 > 0 &&
      length1 + length2 > length3 &&
      length2 + length3 > length1 &&
      length1 + length3 > length2
      return true
    end
  end

  def triangle_type
      if length1 == length2 && length2 == length3
        return :equilateral
      elsif length1 == length2 || length1 == length3 || length2 == length3
        return :isosceles
      else
        return :scalene
      end
  end

  def kind
    if is_it_a_triangle?
      triangle_type
    else
      begin
        raise TriangleError
      end
    end
  end

  class TriangleError < StandardError
    def message
      "Error Message"
    end
  end
end
