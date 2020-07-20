class CreateBeaches < ActiveRecord::Migration[6.0]
  def change
    create_table :beaches do |t|
      t.string :name
      t.string :schedule
      t.float :waves
      t.float :wind

      t.timestamps
    end
  end
end
