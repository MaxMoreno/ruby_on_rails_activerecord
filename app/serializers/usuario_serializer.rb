class UsuarioSerializer < ActiveModel::Serializer
  attributes :nacimiento, {full_name: :full_name}

  def full_name
    "#{object.nombre} #{object.apellido}"
  end
end
