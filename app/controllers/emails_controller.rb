class EmailsController < ApplicationController
  def index
  	mailer = MailGetter.last
  	Mail.defaults do
  	  retriever_method mailer.method.to_sym, :address    => mailer.address,
  	                          :port       => mailer.port,
  	                          :user_name  => mailer.user_name,
  	                          :password   => mailer.password,
  	                          :enable_ssl => true
  	end
  	binding.pry
  	@emails = Mail.find(:what => :last, count: 30, order: :asc)

  end

  def show
  end
end
