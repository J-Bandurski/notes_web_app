require 'test_helper'

class ContactMailerTest < ActionMailer::TestCase
  test "Should return contact email" do
    mail = ContactMailer.contact_email("jacek@webtestme.com", "Jacek", "12345678910", @message = "testing")
    
    assert_equal ['info@mynotes.com'], mail.to
    assert_equal ['info@mynotes.com'], mail.from
    
  end

end