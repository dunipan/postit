class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :username

    has_many :posts
    end
  end
end
