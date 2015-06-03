class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :m_name
      t.boolean :m_is_cover
      t.integer :m_display_number
      t.integer :category_id
      t.integer :photoable_id
      t.string :photoable_type
      t.string :image_uid
      t.string :image_name

      t.timestamps
    end
  end
end
