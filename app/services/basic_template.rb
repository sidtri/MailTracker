class BasicTemplate
  attr_accessor :subject, :message, :to, :user

  def initialize(opts = {})
    @subject = opts.fetch(:subject, "Status Report : #{Time.now.strftime('%B %d, %Y')}")
    @message = opts.fetch(:message, "")
    @parse_message = opts.fetch(:parse_message, "")
    @to = opts.fetch(:to, "")
  end

  def parse_message
    # renderer = Redcarpet::Render::HTML.new()
    # markdown = Redcarpet::Markdown.new(renderer, {})

    # markdown.render(@message)
    @parse_message
  end

  def smtp_settings
    @settings = user.mail_server_credentials.first
    {
      :address => @settings.address,
      :port => @settings.port,
      :user_name => @settings.user_name,
      :password => @settings.password,
      :authentication => @settings.authentication,
      :enable_starttls_auto => true
    }
  end

end
