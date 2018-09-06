class CreateListimages < ActiveRecord::Migration[5.1]
  def change
    create_table :listimages do |t|
      t.string :image
      t.references :listing, foreign_key: true
      t.timestamps
    end
  end
end
