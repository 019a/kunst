class CreateArtpieces < ActiveRecord::Migration
  def change
    create_table :artpieces do |t|
      t.string :name
      t.text :description
      t.string :created
      t.string :status

      t.timestamps null: false
    end
  end
end
