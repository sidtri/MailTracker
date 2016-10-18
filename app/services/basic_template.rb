class BasicTemplate
  attr_accessor :subject, :message

  def initialize(opts = {})
    @subject = opts.fetch(:subject, "Status Report : #{Time.now.strftime('%B %d, %Y')}")
    @message = opts.fetch(:message, "")
    @parse_message = opts.fetch(:parse_message, "")
  end

  def parse_message
    # renderer = Redcarpet::Render::HTML.new()
    # markdown = Redcarpet::Markdown.new(renderer, {})

    # markdown.render(@message)
    @parse_message
  end

end
