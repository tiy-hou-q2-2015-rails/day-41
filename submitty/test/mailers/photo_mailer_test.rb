require 'test_helper'

class PhotoMailerTest < ActionMailer::TestCase
  test "submitted" do
    mail = PhotoMailer.submitted
    assert_equal "Submitted", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
