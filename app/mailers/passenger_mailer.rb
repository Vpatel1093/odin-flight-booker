class PassengerMailer < ApplicationMailer
  def thank_you_email(user)
    @user = user
    @booking = @user.bookings.last
    mail(to: @user.email, subject: "Thanks for the reservation!")
  end
end
