class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :email, index: true, null: false
      t.string :password_digest, null: false
      t.boolean :is_superadmin, default: false

      t.timestamps
    end
  end
end
