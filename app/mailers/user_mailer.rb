############################################################
# remember: mailers are controllers for emails (email views)
############################################################
class UserMailer < ApplicationMailer
  default from: "do-not-reply@example.com" # use in emails that don't specify from:

  # mailer actions have their views just like controllers actions have their views
  # contact_email action has contact_email.html.erb view
  def contact_email(contact)
    @contact = contact
    # mail method renders the contact_email view
    # (mail method in mailers is equivalent of render method in controllers)
    mail(to: Rails.application.secrets.owner_email, from: @contact.email, :subject => "Website Contact")
  end
end
