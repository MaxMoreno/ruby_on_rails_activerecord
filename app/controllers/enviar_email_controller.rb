class EnviarEmailController < ApplicationController

	def index		

  	end

  	def enviar		
		@persona1 = Persona.create({ nombre: 'Ricardo Sampayo', email: 'me@ricardosampayo.com',email_confirmation: 'me@ricardosampayo.com', identificador: "123456789", sexo: 'm', telefono: '123456789123' })
		ActionCorreo.bienvenido_email(@persona1).deliver
        render json: @persona1
  	end
  	
end
