class CreateSongs < ActiveRecord::Migration[6.1]
  def change
    create_table :songs do |t|
      t.integer :external_id
      t.string :name
      t.integer :last_played
      t.integer :upvotes
      t.integer :downvotes
      t.integer :play_count
      t.boolean :definitely_no
      t.boolean :maybe
      t.boolean :close
      t.references :artist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
