class CreatePictures < ActiveRecord::Migration[5.2]
  def change
    create_table :pictures do |t|
      t.string :title, null: false
      t.references :user, foreign_key: true, null: false

      t.timestamps
    end
  end
end
