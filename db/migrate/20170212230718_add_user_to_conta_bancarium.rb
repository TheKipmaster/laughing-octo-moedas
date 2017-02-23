class AddUserToContaBancarium < ActiveRecord::Migration
  def change
    add_reference :conta_bancaria, :user, index: true, foreign_key: true
  end
end
