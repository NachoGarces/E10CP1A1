module Herbivoro
  @@definir = 'Sólo me alimento de vegetales!'

  def self.definir
    @@definir
  end

  def dieta
    'Soy un Herviboro!'
  end
end

module Animal
  def saludar
    'Soy un animal!'
  end
end

class Conejo
  include Herbivoro
  include Animal
  def initialize(name)
    @name = name
  end
end

conejo = Conejo.new('Bugs Bunny')
puts conejo.saludar
puts conejo.dieta
puts Herbivoro.definir
