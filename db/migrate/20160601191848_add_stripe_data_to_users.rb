class AddStripeDataToUsers < ActiveRecord::Migration
  def change
    add_column :users, :stripe_id, :string
    add_column :users, :stripe_subscription_id, :string
    add_column :users, :card_last_four, :string
    add_column :users, :card_exp_month, :integer
    add_column :users, :card_exp_year, :integer
    add_column :users, :card_brand, :string
  end
end
