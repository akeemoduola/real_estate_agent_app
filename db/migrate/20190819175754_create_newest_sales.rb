class CreateNewestSales < ActiveRecord::Migration[6.0]
  def change
    create_table :newest_sales do |t|
      t.date :newest_date
      t.decimal :newest_list_2_price_ratio
      t.integer :newest_days_on_market
      t.belongs_to :agent, null: false, foreign_key: true

      t.timestamps
    end
  end
end
