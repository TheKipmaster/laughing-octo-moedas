class AddPhotoToRefunds < ActiveRecord::Migration
  def change
    add_column :refunds, :photo, :string
  end
end
