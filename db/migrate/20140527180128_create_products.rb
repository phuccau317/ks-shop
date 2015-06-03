class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string  :m_name
      t.text    :m_description
      t.integer :m_status, default: 0
      t.decimal :m_price
      t.integer :m_sale_price
      t.integer :m_weight
      t.integer :m_length
      t.integer :m_width
      t.integer :m_height
      t.text    :m_attributes
      t.integer :m_visibility, default: 1
      t.integer :parent_id
      t.integer :category_id
      t.integer :user_id

      t.timestamps
    end
  end
end
