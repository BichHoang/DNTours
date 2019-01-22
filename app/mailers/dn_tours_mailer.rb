class DnToursMailer < ApplicationMailer
	default :from => "DNTours <dntours123@gmail.com>"
 
    def booking_received(booking)    
        @booking = booking
  
        mail :to => @booking.email, :subject => "We've received your booking"
    end
end
