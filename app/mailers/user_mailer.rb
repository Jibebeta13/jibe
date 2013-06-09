class UserMailer < ActionMailer::Base
  default from: "Jibebeta13@gmail.com"

  def notify_email(email)
  	@email = email
  	if @email.kind == 1
  		mail(:to => "Jibebeta13@gmail.com", :subject => "Developer Email")
  	else
  		mail(:to => "Jibebeta13@gmail.com", :subject => "Project Email")
  	end
  end

end