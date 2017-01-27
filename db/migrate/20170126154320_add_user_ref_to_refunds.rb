class AddUserRefToRefunds < ActiveRecord::Migration
  def change
    add_reference :refunds, :user, foreign_key: true
    add_column :refunds, :quantidade_moedas, :integer
  end
  add_index :refunds [:user_id, :created_at]
end
