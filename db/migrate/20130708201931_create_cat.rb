class CreateCat < ActiveRecord::Migration
  def change
    create_table :cats do |t|
    	t.integer :post_id, :category_id
    	t.timestamps
    end
  end
end
