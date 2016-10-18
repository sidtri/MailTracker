class ComposeMailer < ApplicationMailer
  default from: "siddhartha@dispatchtrack.com"

  def compose(template)
     @template = template
     mail(to: "Satish Natarajan <satish@dispatchtrack.com>", cc: ["Shailu Satish <shailu@dispatchtrack.com>", "Sarat Babu Macharla <sarat@dispatchtrack.com>", "Shastry Rayaprolu <shastry@dispatchtrack.com>", "Herenkumar K <heren@dispatchtrack.com>", "Sundar Rajan <sundar@dispatchtrack.com>"], subject: template.subject)
  end

  def sample(template)
    @template = template
    mail(to: "siddhartha@dispatchtrack.com", subject: template.subject)
  end
end
