class ActionCorreo < ActionMailer::Base
  default from: "test@exampe.com"

  def bienvenido_email(user)
    @user = user
    @url = 'http://codeHero.co'
    
    attachments["codehero.png"] = File.read("#{Rails.root}/public/codehero.png") 
      
    email_with_name = "#{@user.nombre} <#{@user.email}>"

  	mail(to: email_with_name, 
  		subject: 'Aprende a programar con nuestros cursos gratis')

    # mail(:to => "#{user.nombre} <#{user.email}>", :subject => 'Aprende a programar con nuestros cursos gratis')
  end

end
