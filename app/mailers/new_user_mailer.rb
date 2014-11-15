class NewUserMailer < ActionMailer::Base
  default from: "admin@cheers.io"

  def welcome_email(user)
  	@user = user
  	email_with_name = "#{@user.name} <#{@user.email}>"
  	@url = 'localhost:3000/login' #This url will vary depending on what our states are called on the site.
  	# The url will also change once this is deployed to heroku. 
  	mail(to: email_with_name, subject: 'Welcome to Cheers!')
  end
end