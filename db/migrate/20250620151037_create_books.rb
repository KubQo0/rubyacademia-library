class CreateBooks < ActiveRecord::Migration[7.2]
  def change
    create_table :books do |t|
      t.string :title
      t.text :description
      t.integer :pages
      t.integer :bookmark
      t.boolean :read
      t.timestamps
    end
  end
end
