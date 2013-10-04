class Mensaje
#incluimos los módulos que vamos a utilizar   
  include ActiveModel::Validations  #necesario para agregar las condiciones de validacion
  include ActiveModel::Conversion # contiene entre otras cosas el metodo to_key que usamos en el formulario
  include ActiveModel::Serializers::JSON
  include ActiveModel::Serializers::Xml

  
#declaramos las variables del modelo    
  attr_accessor :nombre, :email, :contenido

#Agregamos las condicones a vailidar    
  validates_presence_of :nombre, :email, :contenido
   VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates_format_of :email, { :with => VALID_EMAIL_REGEX , message: "El formato del correo es invalido" }
  validates_length_of :contenido, :maximum => 500

# El constructor que recibe un hash con los valores del formulario
#  y nos crea nuestro objeto mensaje  
  def initialize(attributes = {})
    attributes.each do |nombre, value|
      send("#{nombre}=", value)
    end
  end
  
  # Metodo que debemos agregar a nuestro modelo
  # ya que no se van a guardar los datos en la base de datos
  def persisted?
    false
  end

  def attributes
    {'nombre' => nil,"email" =>nil, "contenido"=>nil}
  end

end
