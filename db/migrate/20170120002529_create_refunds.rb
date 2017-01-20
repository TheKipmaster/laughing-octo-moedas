class CreateRefunds < ActiveRecord::Migration
  def change
    create_table :refunds do |t|
      t.string :value
      t.string :description
      t.boolean :status

      t.timestamps null: false
    end
  end
end
