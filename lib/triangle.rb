class Triangle
  # write code here

  def initialize (side1,side2,side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    validTriangle
    if @side1 == @side2 && @side2 == @side3
      @type = :equilateral
    elsif @side1 == @side2 || @side1 == @side3 || @side2 == @side3
      @type = :isosceles
    else
      @type = :scalene
    end
  end

  def triangleCheck
    [@side1, @side2, @side3].all?(&:positive?) && @side1 != 0 && @side2 != 0 && @side3 != 0
  end

  def sideCheck
    @side1 + @side2 > @side3 && @side1 + @side3 > @side2 && @side2 + @side3 > @side1
  end

  def validTriangle
    raise TriangleError unless triangleCheck && sideCheck
  end


  class TriangleError < StandardError
    
  end

end
