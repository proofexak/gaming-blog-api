class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :nickname, null: false
      t.string :content, null: false
      t.references :post, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
