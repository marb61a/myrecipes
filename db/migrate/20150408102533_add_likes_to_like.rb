class AddLikesToLike < ActiveRecord::Migration
  def change
     add_column :likes, :like, :boolean
     add_column :likes, :chef_id, :integer
     add_column :likes, :recipe_id, :integer
  end
end
