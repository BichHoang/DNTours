require 'test_helper'

class DnToursMailerTest < ActionMailer::TestCase
  test "booking_received" do
    mail = DnToursMailer.booking_received
    assert_equal "Booking received", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
