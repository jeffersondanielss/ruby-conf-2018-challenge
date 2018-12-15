module Triangle
  # Representacao do triangulo
  class Types
    def initialize(vertices)
      @vertices = vertices
    end

    def equilateral?
      uniq_vertices == 1
    end

    def isosceles?
      equilateral? || uniq_vertices == 2
    end

    def scalene?
      uniq_vertices == 3
    end

    private

    def uniq_vertices
      @vertices.uniq.size
    end
  end
end
