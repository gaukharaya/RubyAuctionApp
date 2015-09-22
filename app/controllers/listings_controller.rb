class ListingsController < ApplicationController

  def show
    @listing = Listing.find(params[:id])

    @bids = @listing.bids.order(created_at: :desc)
  end

  def create
    Listing.create(listing_params)
    session[:current_user_email] = listing_params[:email]
    redirect_to root_path
  end

  private

  def listing_params
    params.require(:listing).permit(:email, :body)
  end

end
