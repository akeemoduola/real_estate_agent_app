class CreateAgents < ActiveRecord::Migration[6.0]
  def change
    create_table :agents do |t|
      t.string :zillow_url
      t.string :first_name
      t.string :last_name
      t.string :zillow_rating
      t.string :brokerage_name
      t.string :review
      t.string :title
      t.string :address
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :phone_no
      t.string :website
      t.string :facebook
      t.string :instagram
      t.string :linkedin
      t.string :twitter
      t.string :snapchat
      t.string :youtube
      t.boolean :hide, null: false, default: false
      t.integer :number_of_sales_presented_buyer
      t.string :seller_to_buyer_ratio
      t.date :date_processed
      t.integer :request_number
      t.integer :number_of_views
      t.integer :admin_views
      t.integer :visitor_views

      t.timestamps
    end
  end
end
