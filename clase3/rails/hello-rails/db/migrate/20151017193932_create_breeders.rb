class CreateBreeders < ActiveRecord::Migration
  def change
    create_table :breeders do |t|
      t.string :name
      t.timestamps null: false
    end
    add_reference :dogs, :breether, index: true
  end
end
