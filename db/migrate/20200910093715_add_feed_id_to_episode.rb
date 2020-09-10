class AddFeedIdToEpisode < ActiveRecord::Migration[6.0]
  def change
    add_column :episodes, :feed_id, :integer, null: false
    add_index :episodes, :feed_id
  end
end
