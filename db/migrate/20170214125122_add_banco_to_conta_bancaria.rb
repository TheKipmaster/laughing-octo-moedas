class AddBancoToContaBancaria < ActiveRecord::Migration
  def change
    add_reference :conta_bancaria, :banco, index: true, foreign_key: true
  end
end
