require 'faker'
class Vehicle
  attr_accessor :model, :year
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
  attr_accessor :count
  @@count = 0
  def initialize(model, year)
    super
    @@count += 1
  end

  def contador
    @@count
  end

  def engine_start
    super
    puts 'El motor se ha encendido!'
  end
end

def car_factory
  car = ''
  10.times do
    car = Car.new(Faker::Overwatch.hero, Faker::Date.birthday.year)
    puts "Modelo: #{car.model} -- Año: #{car.year}"
    puts car.engine_start
  end
  puts "Cantidad de instancias generadas --> #{car.contador}"
end
car_factory
