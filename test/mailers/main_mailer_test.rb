require 'test_helper'

class MainMailerTest < ActionMailer::TestCase
  test "notify_listing_author" do

    listing = Listing.create email: 'author@listing.com', body: 'a test listing'
    bid = Bid.create email: 'author@bid.com', body: 'a test bid'

    listing.bids << bid

    mail = MainMailer.notify_listing_author(bid)
    assert_equal "New bid to your listing", mail.subject

    assert_equal [listing.email], mail.to
    assert_equal [bid.email], mail.from

    assert_match bid.body, mail.body.encoded
  end

end
