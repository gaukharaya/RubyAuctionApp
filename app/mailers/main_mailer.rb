class MainMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.main_mailer.notify_listing_author.subject
  #
  def notify_listing_author(bid)

    sleep 5

    @greeting = "Hi"
    @bid = bid

    mail to: bid.listing.email, from: bid.email
  end
end
