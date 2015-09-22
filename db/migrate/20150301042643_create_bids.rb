class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.integer :listing_id
      t.string :email
      t.text :body

      t.timestamps null: false
    end
  end
end
