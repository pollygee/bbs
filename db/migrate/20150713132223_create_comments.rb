class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.belongs_to :author, index: true, foreign_key: true
      t.belongs_to :post, index: true, foreign_key: true
      t.text :body

      t.timestamps null: false
    end
  end
end
