class CreateContaBancaria < ActiveRecord::Migration
  def change
    create_table :conta_bancaria do |t|
      t.string :agencia
      t.string :conta

      t.timestamps null: false
    end
  end
end
