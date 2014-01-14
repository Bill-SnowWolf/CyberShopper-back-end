class AddRolesRatingMarketsToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :roles, :string
  	add_column :users, :rating, :integer
  	add_column :users, :markets, :string
  end
end
