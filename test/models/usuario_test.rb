require 'test_helper'

class UsuarioTest < ActiveSupport::TestCase
  
  test "guardar_usuario" do
  	user1 = Usuario.new({ apellido: 'Sampayo', nombre: 'Ricardo', nacimiento: Time.zone.parse("1988-05-09"), sexo: 'm' })
    assert user1.save
  end

  test "validar_nombre" do
  	user1 = Usuario.new({ apellido: 'Sampayo', nombre: 'Ricardo', nacimiento: Time.zone.parse("1988-05-09"), sexo: 'm' })
	assert_equal( user1.nombre, 'Ricardo')  
  end

  test "prueba_fallida" do
	assert false
  end

end
