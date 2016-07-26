class Torta
  attr_reader :type #es un atributo y es referido en el spec

  def initialize(type)
    @type = type
    @time_baked = 0
  end

  def bake!(time)
    @time_baked += time
    self #regresa la clase Torta
  end

  def status
    status = @time_baked.to_f / bake_time #requiere al metodo bake_time

    case
    when status < 0.5
      'crudo'
    when status < 0.7
      'casi listo'
    when status <= 1.0
      'listo'
    when status > 1.0
      'quemado'
    end
  end

  def bake_time
    { "jamon" => 3, "queso" => 8, "milanesa" => 10 }[@type] #saca el value
    # de la key @type
  end
end
