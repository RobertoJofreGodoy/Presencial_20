module Formula

    def perimetro(lado1,lado2 = 0)
        return (lado2 == 0) ? ("el perimetro del cuadrado es: #{pe = (lado1 + lado1)}") : ("el perimetro del rectangulo es: #{pe =  ((lado1*2) + (lado2*2))}")
    end

    def area (lado1,lado2 = 0)
        return (lado2 == 0) ? ("el area del cuadrado es: #{are = lado1 * lado1}") : ("el area del rectangulo es: #{are = (lado1 * lado2)}")
    end
    
end

class Rectangulo
    include Formula
    attr_accessor :base, :altura
    def initialize(base, altura)
      @base = base
      @altura = altura
    end

    def lados(base,altura)
        print "la base del rectangulo mide #{base} y la altura mide #{altura}"

    end
  end

class Cuadrado
    include Formula
    attr_accessor :lado
    def initialize(lado)
      @lado = lado
    end

    def lados(lado)
        print "cada lado del cuadrado mide #{lado}"
    end
end
  
rectangulo1 = Rectangulo.new(10,20)
puts rectangulo1.lados(rectangulo1.base,rectangulo1.altura)
puts rectangulo1.perimetro(rectangulo1.base,rectangulo1.altura)
puts rectangulo1.area(rectangulo1.base,rectangulo1.altura)

cuadrado1 = Cuadrado.new(15)
puts cuadrado1.lados(cuadrado1.lado)

puts cuadrado1.perimetro(cuadrado1.lado)
puts cuadrado1.area(cuadrado1.lado)