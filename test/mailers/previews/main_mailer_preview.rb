# Preview all emails at http://localhost:3000/rails/mailers/main_mailer
class MainMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/main_mailer/notify_listing_author
  def notify_listing_author
    mail = MainMailer.notify_listing_author(Bid.first)
  end

end
