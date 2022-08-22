class Triangle
  # write code here
  attr_accessor :a, :b, :c

  def initialize (a, b, c)
    @a= a
    @b=b
    @c=c
  end
  def kind

    if a+b>c && a+c>b && b+c>a 
      if a == b && a == c && b == c
        :equilateral
      elsif a == b || a == c || b == c
        :isosceles
      else
        :scalene
      end
    else
      begin
        raise TriangleError
      end
    end

  end

  class TriangleError < StandardError
    def message
      "Not a valid triangle"
    end

  end

end



