class RemoveMEmailFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :m_email
  end
end
