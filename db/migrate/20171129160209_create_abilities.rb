class CreateAbilities < ActiveRecord::Migration[5.1]
  def change
    create_table :abilities do |t|
      t.string :name, null: false, limit: 100
      t.text :description
      t.boolean :is_ultimate, null: false, default: false
      t.references :hero, index: true
      t.timestamps
    end
  end
end
