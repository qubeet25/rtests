    # Represents a Circle where center is a Point and radius is a Number
    class Circle
        attr_accessor :center, :radius
        def initialize(center, radius) 
          @center = center 
          @radius = radius
        end
    end
        
      # Represents a Point where x and y are Numbers
    class Point
        attr_accessor :x, :y
        def initialize(x, y)
          @x = x
          @y = y 
        end
    end