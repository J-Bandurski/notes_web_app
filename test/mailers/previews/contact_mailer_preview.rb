# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview

    def contact_email
        ContactMailer.contact_email("jacek@webtestme.com", "Jacek", "12345678910", @message = "testing")
    end




end
