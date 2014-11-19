class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.string :description
      t.string :file

      t.timestamps
    end
  end
end
