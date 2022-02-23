class CreateAuthors < ActiveRecord::Migration[6.1]
  def change
    create_table :authors do |t|
      t.string :first_name, index: true, null: false
      t.string :last_name, index: true, null: false
      t.integer :year_of_birth, index: true, null: false
      t.boolean :is_alive, default: true

      t.timestamps
    end
  end
end
