class Vehicle
  def initialize(model, year)
    @model = model
    @year = year
    @start = false
  end

  def engine_start
    @start = true
  end
end

class Car < Vehicle
  @@num_instancias = 0
  def initialize(model, year)
    super(model, year)
    @@num_instancias+=1
  end

  def engine_start
    super
    puts "el motor se ha encendido!"
  end

  def self.num_instancias
    @@num_instancias
  end
end

c = Car.new("model", 1980)
c.engine_start

10.times { Car.new("model", 1980) } # tricky way as no destructor found

puts Car.num_instancias
