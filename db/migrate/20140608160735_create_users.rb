class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :m_username
      t.string :m_first_name
      t.string :m_last_name
      t.string :m_email
      t.integer :m_product_limit
      t.integer :m_user_type

      t.timestamps
    end
  end
end
