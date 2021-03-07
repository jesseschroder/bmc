class CreateArtists < ActiveRecord::Migration[6.1]
  def change
    create_table :artists do |t|
      t.integer :external_id
      t.string :name

      t.timestamps
    end
  end
end
