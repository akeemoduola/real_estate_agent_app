class CreateSales < ActiveRecord::Migration[6.0]
  def change
    create_table :sales do |t|
      t.decimal :sold_price
      t.date :sold_date
      t.date :date_listed
      t.decimal :listed_price
      t.decimal :list_2_price_ratio
      t.integer :days_on_market
      t.belongs_to :agent, null: false, foreign_key: true

      t.timestamps
    end
  end
end
