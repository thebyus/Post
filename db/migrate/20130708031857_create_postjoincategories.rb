class CreatePostjoincategories < ActiveRecord::Migration
  def change
    create_table :postjoincategories do |t|
    	t.integer :post_id, :category_id
    	t.timestamps
    end
  end
end
