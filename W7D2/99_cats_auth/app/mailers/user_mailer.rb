class UserMailer < ApplicationMailer

    default from: 'email@email.com'

    def welcome_email(user)
        mail 
    end
end
