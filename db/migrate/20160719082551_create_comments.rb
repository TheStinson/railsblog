class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name
      t.string :email
      t.string :content
      t.references :post, foreign_key: true
      t.timestamps null: false
    end
  end
end
