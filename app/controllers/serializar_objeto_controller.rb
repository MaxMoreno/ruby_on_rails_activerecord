class SerializarObjetoController < ApplicationController

  	def index

	end

	def serializado
		@ejemplo1    = Usuario.all
		render json: @ejemplo1 
  	end

  	def serializado_meta
		@ejemplo1    = Usuario.all
		render json: @ejemplo1  , meta: {autor: 'www.codeHero.co'}, meta_key: 'meta_object'
  	end

  	def serializado_custom
		@ejemplo1    = Usuario.all
		render json: @ejemplo1 , each_serializer: UsuarioCustomSerializer
  	end


end
