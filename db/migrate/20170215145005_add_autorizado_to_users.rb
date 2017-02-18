class AddAutorizadoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :autorizado, :boolean, default: false
  end
end
