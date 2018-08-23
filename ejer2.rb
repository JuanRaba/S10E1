class MiClase
    attr_accessor :name
    def initialize(name)
        @name = name
    end

    def saludar
        "Hola! Soy la clase #{@name} de la clase #{self.class}"
    end
end

c = MiClase.new('Clase Uno')
puts c.name
c.name = 'Nombre Nuevo'
puts c.saludar