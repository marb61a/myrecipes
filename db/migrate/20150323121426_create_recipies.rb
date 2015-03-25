class CreateRecipies < ActiveRecord::Migration
  def change
    create_table :recipies do |t|
      t.string :name
      t.text :summary
      t.text :description 
      
      t.timestamps
    end
  end
end
