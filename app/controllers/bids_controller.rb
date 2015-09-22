class BidsController < ApplicationController

  def create
    listing = Listing.find(params[:bid][:listing_id])
    bid = listing.bids.create(bid_params)

    MainMailer.notify_listing_author(bid).deliver_later

    session[:current_user_email] = bid_params[:email]
    redirect_to listing
  end

  private

  def bid_params
    params.require(:bid).permit(:email, :body)
  end

end
