# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#


	persona1 = Persona.create({ nombre: 'Ricardo Sampayo', email: 'me@ricardosampayo.com',email_confirmation: 'me@ricardosampayo.com', identificador: "123456789", sexo: 'm', telefono: '123456789123' })
	persona2 = Persona.create({ nombre: 'Carlos Picca', email: 'me@carlospicca.com', email_confirmation: 'me@carlospicca.com', identificador: "123456790", sexo: 'm', telefono: '65556789123' })
	persona3 = Persona.create({ nombre: 'Juana Perez', email: 'me@juanaperez.com', email_confirmation: 'me@juanaperez.com', identificador: "123456791", sexo: 'f', telefono: '999456789123' })
	persona4 = Persona.create({ nombre: 'Alberto Grespan', email: 'me@AlbertoGrespan.com', email_confirmation: 'me@AlbertoGrespan.com', identificador: "123456792", sexo: 'm', telefono: '875456789123' })
