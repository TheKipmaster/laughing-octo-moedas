class CreateBancos < ActiveRecord::Migration
  def change
    create_table :bancos do |t|
      t.string :nome

      t.timestamps null: false
    end
  end
end
