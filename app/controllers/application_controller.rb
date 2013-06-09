class ApplicationController < ActionController::Base
  protect_from_forgery

  def home
  end

  def login
  end

  def validate
    if params[:password] == "Easywin2006"
      session[:admin] = "OK"
      redirect_to admin_path
    else
      render :action => "login"
    end
  end

  def admin
  	@emails = Email.all
  end

end