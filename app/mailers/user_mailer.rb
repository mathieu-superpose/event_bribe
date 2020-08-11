class UserMailer < ApplicationMailer
	default from: 'vraiment@tropbeau.site'
 
  def welcome_email(user)
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    @user = user 

    #on définit une variable @url qu'on utilisera dans la view d’e-mail
    @url  = 'http://eventbribe.co/login' 

    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: @user.email, subject: 'Bienvenue chez nous !') 
  end

  def confirmation_email(attendance)
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    @attendance = attendance
    @user = User.find(attendance.attendant_id)
    @event = Event.find(attendance.event_id)

    #on définit une variable @url qu'on utilisera dans la view d’e-mail
    @url  = 'http://eventbribe.co/login' 

    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: @user.email, subject: 'Confirmation de participation') 
  end
end
