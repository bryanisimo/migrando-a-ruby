class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :breed
      t.string :name
      t.date :birthday
      t.text :description
      t.string :color

      t.timestamps null: false
    end
  end
end
