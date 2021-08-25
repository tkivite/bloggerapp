class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :content
      t.string :parent_type
      t.integer :parent_id
      t.belongs_to :post, index: true

      t.timestamps
    end
  end
end