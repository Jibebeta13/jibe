class EmailsController < ApplicationController

  def new_dev_email
    @email = Email.new(:kind => 1)
  end

  def new_project_email
    @email = Email.new(:kind => 2)
  end

  def create
    @email = Email.new(params[:email])

    respond_to do |format|
      if @email.save
        format.html { redirect_to root_path, notice: 'Email was successfully submitted.' }
        UserMailer.notify_email(@email).deliver
      else
        format.html { redirect_to root_path, notice: 'Something was wrong with the email, try again.' }
      end
    end
  end

end
