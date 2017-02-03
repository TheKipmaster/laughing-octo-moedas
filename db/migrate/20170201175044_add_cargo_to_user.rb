class AddCargoToUser < ActiveRecord::Migration
  def change
    add_reference :users, :cargo, index: true, foreign_key: true
  end
end
