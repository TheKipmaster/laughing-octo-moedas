class AddNucleoToUser < ActiveRecord::Migration
  def change
    add_reference :users, :nucleo, index: true, foreign_key: true
  end
end
