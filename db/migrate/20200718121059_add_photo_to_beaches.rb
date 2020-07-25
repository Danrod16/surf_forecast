class AddPhotoToBeaches < ActiveRecord::Migration[6.0]
  def change
    add_column :beaches, :photo, :string
  end
end
