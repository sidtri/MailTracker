class EmailsController < ApplicationController
  def index
  	mailer = MailGetter.last
  	Mail.defaults do
  	  retriever_method :pop3, :address    => mailer.address,
  	                          :port       => mailer.port,
  	                          :user_name  => mailer.user_name,
  	                          :password   => mailer.password,
  	                          :enable_ssl => true
  	end
  	@emails = Mail.first

  end

  def show
  end
end
