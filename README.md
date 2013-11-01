# Ruby on Rails desde Cero: ActiveRecord 

Espacio Git determinado a los siguientes tutoriales:

* [Ruby on Rails desde Cero: ActiveRecord parte 2][4]
* [Ruby on Rails desde cero: ActiveRecord Validaciones][5]
* [Ruby on Rails desde cero: ActiveModel][6]
* [Ruby on Rails desde cero: Serializar Objetos (active_model_serializers)][7]
* [Ruby on Rails desde Cero: Enviar emails (ActionMailer)][8]

Suponiendo que tenemos instalado y configurado Rails en nuestros servidores (si esto no es así podemos revisar el primer capítulo de la serie: [Ruby on Rails desde Cero: Instalación & Configuración][1]) debemos seguir estos sencillos pasos para probar el proyecto:

Primero configuramos el acceso a la base de datos en el archivo dentro del directorio '/config/'database.yml' tal y como aprendimos en [Ruby on Rails desde Cero: Estructura del proyecto][2]

Nos ubicamos dentro del repositorio y ejecutamos los siguientes comandos:

* Instalamos las gemas necesarias para el proyecto.

		bundle install
	
* Instalamos las bases de datos configuradas en el archivo 'database.yml'
	
		rake db:create 

* Migramos la estructura de la base de datos

		rake db:migrate

* Migramos los datos preparados que tenemos en la app
		
		rake db:seed 		

* Iniciamos el servidor

		rails s

***
## Tutorial ActionMailer

Para que funcione la emisión de correos se deben configurar el servidor de correos que estemos utilizando, este se ubica en la siguiente ruta

- config/environments/development.rb

		config.action_mailer.delivery_method = :smtp
		config.action_mailer.smtp_settings = {
		  address:              'smtp.gmail.com',
		  port:                 587,
		  domain:               'gmail.com',
		  user_name:            'codehero@gmail.com',
		  password:             'secret',
		  authentication:       'plain',
		  enable_starttls_auto: true  }

En esta ruta se agregan los datos de su dirección de correo electrónico o servidor para q funcione

***
#### [CodeHero.co][3]

Una iniciativa que nace de la falta de recursos educativos sobre tecnologías de información en español.

Funda en mayo de 2013 como un proyecto de cinco jóvenes venezolanos, residentes de la ciudad de Caracas, con el sueño de llevar los conocimientos adquiridos durante sus estudios y experiencias de trabajo, hasta las personas que no tienen acceso a ella, principalmente porque no entienden la lengua más hablada del internet, inglés.

[1]:http://codehero.co/ruby-on-rails-desde-cero-instalacion-configuracion/
[2]:http://codehero.co/ruby-on-rails-desde-cero-estructura-del-proyecto/
[3]:http://codehero.co
[4]:http://codehero.co/activerecord-parte-2/
[5]:http://codehero.co/activerecord-validaciones/
[6]:http://codehero.co/activemodel/
[7]:http://codehero.co/serializar-objetos-active_model_serializers/
[8]:http://codehero.co/ruby-rails-desde-cero-enviar-emails-actionmailer/
