class CreateHeros < ActiveRecord::Migration[5.1]
  def change
    create_table :heros do |t|
      t.string :name, null: false, limit: 100
      t.string :real_name, limit: 100
      t.integer :health
      t.integer :armour
      t.integer :shield
      t.timestamps
    end
  end
end
