class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
    	t.string :url
    	t.string :title
    	t.text :description
    	
    has_one :users

    
    end
  end
end
