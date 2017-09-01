class Plan
  # Esta es la forma en la que se declaran constantes.
  PLANS = [:free, :premium]
  
  def self.option
    # El metodo map se utiliza para modificar todos los elementos en un array. Este funcion simplemente
    # aplica el metodo capitalize a cada elemento del arreglo.
    PLANS.map { |plan| [plan.capitalize, plan] }
  end
  
end