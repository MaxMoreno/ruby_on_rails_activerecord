# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
	user1 = Usuario.create({ apellido: 'Sampayo', nombre: 'Ricardo', nacimiento: Time.zone.parse("1988-05-09"), sexo: 'm' })
	user2 = Usuario.create({ apellido: 'Picca', nombre: 'Carlos', nacimiento: Time.zone.parse("1986-05-09"), sexo: 'm'  })
	user3 = Usuario.create({ apellido: 'Grespan', nombre: 'Alberto', nacimiento: Time.zone.parse("1078-05-09"), sexo: 'm'  })
	user4 = Usuario.create({ apellido: 'Gonzalez', nombre: 'Oscar', nacimiento: Time.zone.parse("1982-05-09"), sexo: 'm'  })
	user5 = Usuario.create({ apellido: 'Wiesel', nombre: 'Jonathan', nacimiento: Time.zone.parse("1981-05-09"), sexo: 'm'  })
	user6 = Usuario.create({ apellido: 'Velasquez', nombre: 'Ramses', nacimiento: Time.zone.parse("1968-05-09"), sexo: 'm'  })
	user7 = Usuario.create({ apellido: 'Juana', nombre: 'Perez', nacimiento: Time.zone.parse("1996-05-09"), sexo: 'f'  })
	user8 = Usuario.create({ apellido: 'Alejandra', nombre: 'Torres', nacimiento: Time.zone.parse("1988-02-03"), sexo: 'f'  })
#   Mayor.create(name: 'Emanuel', city: cities.first)
	direccion1 = Direccion.create({ calle: 'Sampa' , zona: 'zona1',pais: 'Venezuela',usuario: user1,ciudad: 'caracas'})
	direccion2 = Direccion.create({ calle: 'Picca' , zona: 'zona1',pais: 'Argentina',usuario: user2,ciudad: 'Buenos Aires' })
	direccion3 = Direccion.create({ calle: 'Gresp' , zona: 'zona1',pais: 'Mexico   ',usuario: user3,ciudad: 'DF' })
	direccion4 = Direccion.create({ calle: 'Gonzal', zona: 'zona1',pais: 'Venezuela',usuario: user5,ciudad: 'caracas' })
	direccion5 = Direccion.create({ calle: 'Wiesel', zona: 'zona1',pais: 'Venezuela',usuario: user6,ciudad: 'caracas' })
	direccion6 = Direccion.create({ calle: 'Velasq', zona: 'zona1',pais: 'Peru     ',usuario: user8,ciudad: 'Lima'  })
	direccion7 = Direccion.create({ calle: 'Juanaf', zona: 'zona1',pais: 'Espania  ',usuario: user1,ciudad: 'Madrid'  })
	direccion8 = Direccion.create({ calle: 'Alejaf', zona: 'zona1',pais: 'Sucre    ',usuario: user2,ciudad: 'caracas' })

	telefono1 = Telefono.create({ telefono: '123456789' , tipo: 'cel ', direccion: direccion1})
	telefono2 = Telefono.create({ telefono: '123456789' , tipo: 'casa', direccion: direccion2})
	telefono3 = Telefono.create({ telefono: '123456789' , tipo: 'cel ', direccion: direccion1})
	telefono4 = Telefono.create({ telefono: '123456789' , tipo: 'casa', direccion: direccion6})
	telefono5 = Telefono.create({ telefono: '123456789' , tipo: 'cel ', direccion: direccion3})


	factura1 = Factura.create({ referencia: '123456789' , monto: '$123', usuario: user1})
	factura2 = Factura.create({ referencia: '123456789' , monto: '$1234', usuario: user1})
	factura3 = Factura.create({ referencia: '123456789' , monto: '$12', usuario: user2})
	factura4 = Factura.create({ referencia: '123456789' , monto: '$987', usuario: user3})
	factura5 = Factura.create({ referencia: '123456789' , monto: '$74643', usuario: user5})