class CursoActiverecordController < ApplicationController

  def index
	@usuarios    = Usuario.all
	@direccions  = Direccion.all
	@facturas    = Factura.all
	@telefonos   = Telefono.all
  end

  def joins_sql
	@usuarios    = Usuario.joins('INNER JOIN direccions ON direccions.usuario_id = usuarios.id')
  end


  def joins
	@ejemplo1    = Usuario.joins(:direccions)
	@ejemplo2    = Usuario.joins(:direccions, :facturas)
	@ejemplo3    = Usuario.joins( direccions: :telefonos)
	@ejemplo4    = Usuario.joins(:direccions).where(direccions: {pais: 'Venezuela'})
  end

  def scope
	@ejemplo1    = Usuario.masculino
	@ejemplo2    = Usuario.mayor_que(Time.zone.parse("1988-05-09"))
	@ejemplo3    = Usuario.masculino.mayor_que(Time.zone.parse("1988-05-09"))

  end

end
