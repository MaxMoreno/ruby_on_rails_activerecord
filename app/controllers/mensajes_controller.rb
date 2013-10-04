class MensajesController < ApplicationController

  def index
    @mensaje = Mensaje.new
  end

  def json
  @mensaje = Mensaje.new({'nombre' => 'Ricardo Sampayo',
                          "email" =>'me@RicardoSampayo.com', 
                          "contenido"=>'Este es un mensaje para CodeHero'})
  render :json => @mensaje.to_json
  end

  def xml
    @mensaje = Mensaje.new({'nombre' => 'Ricardo Sampayo',
                            "email" =>'me@RicardoSampayo.com', 
                            "contenido"=>'Este es un mensaje para CodeHero'})
    render :xml => @mensaje.to_xml
  end
  
  def create
  
    @mensaje = Mensaje.new(params[:mensaje])


    if @mensaje.valid?

      flash[:notice] = "Se envio el mensaje con exito"
      redirect_to mensajes_path
   
    else
      
      render :action => 'index'
    
    end
  end


end
