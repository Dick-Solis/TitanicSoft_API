class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :nombre
      t.string :apellido
      t.string :gmail
      t.string :password_digest
      t.string :token

      t.timestamps
    end
    add_index :users, :token, unique: true
    add_index :users, :gmail, unique: true
  end
end
