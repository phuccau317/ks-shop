class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string  :m_name
      t.integer :m_status, default: 0
      t.integer :parent_id
      t.integer :user_id

      t.timestamps
    end
  end
end
