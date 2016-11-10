class ComposeMailer < ApplicationMailer
  default from: "koolspy.siddhu@gmail.com"

  # def compose(template)
  #    @template = template
  #    mail(to: "Satish Natarajan <satish@dispatchtrack.com>", cc: ["Shailu Satish <shailu@dispatchtrack.com>", "Sarat Babu Macharla <sarat@dispatchtrack.com>", "Shastry Rayaprolu <shastry@dispatchtrack.com>", "Herenkumar K <heren@dispatchtrack.com>", "Sundar Rajan <sundar@dispatchtrack.com>"], subject: template.subject)
  # end

  def sample(template)
    @template = template
    mail(delivery_method_options: @template.smtp_settings, to: @template.to, subject: @template.subject)
  end
end
