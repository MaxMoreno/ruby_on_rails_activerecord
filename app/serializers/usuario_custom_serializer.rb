class UsuarioCustomSerializer < ActiveModel::Serializer
  attributes :nombre, :apellido, :nacimiento, :sexo
end
