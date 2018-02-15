class CreateLives < ActiveRecord::Migration[5.0]
  def change
    create_table :lives do |t|
      t.string :name
      t.float :x
      t.float :y
      t.integer :tag

    end
  end
end
