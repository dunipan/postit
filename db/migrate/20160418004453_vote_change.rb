class VoteChange < ActiveRecord::Migration
  def change
  	add_column :votes, :vote, :string
  	remove_column :votes, :votes, :string
  end
end
