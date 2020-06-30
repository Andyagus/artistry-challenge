class CreateStudios < ActiveRecord::Migration[6.0]
  def change
    create_table :studios do |t|
      t.string :name
      t.integer :artist_id
      t.integer :instrument_id

      t.timestamps
    end
  end
end
