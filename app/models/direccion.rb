class Direccion < ActiveRecord::Base
	belongs_to :usuario
    has_many :telefonos
end
