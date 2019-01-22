# Preview all emails at http://localhost:3000/rails/mailers/dn_tours_mailer
class DnToursMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/dn_tours_mailer/booking_received
  def booking_received
    DnToursMailer.booking_received
  end

end
