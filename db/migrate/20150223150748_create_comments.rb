class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :comment_text
      t.references :post, index: true
      t.references :user, index: true

      t.timestamps null: false
    end
    
    add_foreign_key :comments, :users
  end
end
