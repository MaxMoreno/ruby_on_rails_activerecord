class Usuario < ActiveRecord::Base

  scope :masculino, -> { where(sexo: "m") }
  scope :mayor_que, ->(time) { where("nacimiento < ?", time) }

	has_many :direccions
	has_many :facturas
end
