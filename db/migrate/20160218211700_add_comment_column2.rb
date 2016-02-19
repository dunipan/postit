class AddCommentColumn2 < ActiveRecord::Migration
  def change
  	add_column :comments, :post_id, :integer
  	remove_column :posts, :post_id
  end
end
