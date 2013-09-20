class CursoValidacionesController < ApplicationController

  def index
  	# Crea una persona nueva para cargarla con informacion
  	@nuevo_usuario = Persona.new
  	 # Carga todas las personas de base de datos
	@usuarios    = Persona.all
  end
  
  def create
  
  # Recibe y crea una persona con los datos del formulario
    @nuevo_usuario = Persona.new(params[:nuevo_usuario].permit(:nombre, :email,:identificador, :telefono,:sexo,:email_confirmation))
	@usuarios    = Persona.all

	# intenta guardar en base de datos
      if @nuevo_usuario.save
      	#si tiene exito nos lleva al index
		redirect_to validation_path
      else
      	# si no carga nuevamente la vista con los errores a corregir
         render action: 'index' 
      end
  end

end
