class CreateNucleos < ActiveRecord::Migration
  def change
    create_table :nucleos do |t|
      t.string :nome

      t.timestamps null: false
    end
  end
end
