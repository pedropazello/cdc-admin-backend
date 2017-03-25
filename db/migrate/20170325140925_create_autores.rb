class CreateAutores < ActiveRecord::Migration[5.1]
  def change
    create_table :autores do |t|
      t.string :nome
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
